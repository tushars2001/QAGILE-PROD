import os
from django.shortcuts import render, redirect
from django.conf import settings
from . import models
from django.core.files.storage import FileSystemStorage
import pandas as pd
import csv
from django.http import HttpResponse, JsonResponse

# Create your views here.


def tools_home(request):
    return render(request, 'tools_home.html')


def fit_format(request):
    ffdata = models.get_ffdata('%')

    context_data = {

        'ffdata': ffdata
    }
    return render(request, 'ff.html', context_data)


def create_definition(request):
    context = {'success': 'True', 'message': ''}

    if 'success' in request.GET and 'message' in request.GET:
        context = {'success': request.GET['success'], 'message': request.GET['message']}

    return render(request, 'create_definition.html', context)


def structure(request):
    name = ''

    if "name" in request.GET:
        name = request.GET["name"]

    ffdata = models.get_ffdata(name)
    ffdetails = models.get_ffdetails(name)

    if not ffdata:
        ffdata = [{'name': ''}]

    context_data = {

        'ffdetails': ffdetails,
        'ffdata': ffdata[0]
    }
    return render(request, 'structure.html', context_data)


def run_test(request):
    definition = ''
    uploaded_file_url = ''

    if "definition" in request.GET:
        definition = request.GET["definition"]

    if "definition" in request.POST:
        definition = request.POST["definition"]

    if request.method == 'POST' and 'myfile' in request.FILES and request.FILES['myfile']:
        print("In FILE Upload")
        myfile = request.FILES['myfile']
        fs = FileSystemStorage()
        filename = fs.save(myfile.name, myfile)
        uploaded_file_url = fs.url(filename)

    ffdata = models.get_ffdata(definition)
    ffdetails = models.get_ffdetails(definition)

    context_data = {
        'ffdata': ffdata[0],
        'ffdetails': ffdetails,
        'name': definition,
        'uploaded_file_url': uploaded_file_url
    }

    return render(request, 'run_test.html', context_data)


def run(request):
    definition = ''
    file_name = ''
    details = '0'
    response = None
    lines = []
    line = []
    result = ''
    datatype_errors = 0
    required_errors = 0
    email_format_errors = 0
    pk_errors = []
    all_null_errors = []
    date_format_errors = 0
    rows_passed = 0
    range_errors = 0
    skiprows = 0

    if "details" in request.GET:
        details = request.GET["details"]

    if "details" in request.POST:
        details = request.POST["details"]

    if "definition" in request.GET:
        definition = request.GET["definition"]

    if "definition" in request.POST:
        definition = request.POST["definition"]

    if "file_name" in request.GET:
        file_name = request.GET["file_name"]

    if "file_name" in request.POST:
        file_name = request.POST["file_name"].split("/")[-1]

    if not os.path.isfile(os.path.join(settings.MEDIA_ROOT, file_name)):
        return HttpResponse("<h2>File doesn't exists: " + file_name + " </h2>")

    ffdata = models.get_ffdata(definition)
    ffdetails = models.get_ffdetails(definition)

    if ffdata[0]['is_header']:
        skiprows = 1

    col_array = []
    col_length_array = []

    for idx in range(len(ffdetails)):
        col_array.append(ffdetails[idx]['col_name'])
        col_length_array.append(ffdetails[idx]['max_len'])

    if details == '1':
        # Create the HttpResponse object with the appropriate CSV header.
        response = HttpResponse(content_type='text/csv')
        response['Content-Disposition'] = 'attachment; filename="' + file_name + '_results.csv"'
        writer = csv.writer(response)

    if ffdata[0]['file_type'] == 'FIXED':
        # Using Pandas with a column specification
        data = pd.read_fwf((os.path.join(settings.MEDIA_ROOT, file_name)),
                           skiprows=skiprows, widths=col_length_array, header=None, delimiter="\n\t", dtype='object')

    if ffdata[0]['file_type'] == 'CSV':
        data = pd.read_csv(os.path.join(settings.MEDIA_ROOT, file_name),
                           skiprows=skiprows, header=None, dtype='object',).fillna('')

    if ffdata[0]['file_type'] == 'PIPE':
        data = pd.read_csv(os.path.join(settings.MEDIA_ROOT, file_name),
                           skiprows=skiprows, header=None, dtype='object', sep='|').fillna('')

    if ffdata[0]['file_type'] == 'TAB':
        data = pd.read_csv(os.path.join(settings.MEDIA_ROOT, file_name),
                           skiprows=skiprows, header=None, dtype='object', sep='\t', lineterminator='\n').fillna('')

    rows = data.shape[0]
    cols = data.shape[1]
    # writer.writerow(header)

    # duplicate key field test
    for col in range(cols):
        if ffdetails[col]['is_pk'] == 1:
            ret = models.test_pk(data[col])
            if ret['result'] is False:
                pk_errors.append("Column " + ffdetails[col][
                    'col_name'] + " has " + str(ret['size']) + " duplicates ")

    # all null in column check
    for col in range(cols):
        # need to check if all_null not allowed, but ignore if either required or pk is a requirement
        if ffdetails[col]['all_null'] == 0 and ffdetails[col]['required'] == 0 and ffdetails[col]['is_pk'] == 0:
            if data[(data[col].replace(' ', '', regex=True) != u'')].index.size == 0:
                all_null_errors.append("Column " + ffdetails[col][
                    'col_name'] + " has all Null/Blanks")

    for row in range(rows):
        for col in range(cols):
            # line = line + data[col][row] + ","
            line.append(data[col][row])

            # data type test
            ret = models.test_dataType(data[col][row], ffdetails[col]['col_data_type'],
                                 ffdetails[col]['decimals'], ffdetails[col]['format'])
            if ret['result'] is False:
                datatype_errors = datatype_errors + 1
                result = result + "\nDataType For column " + ffdetails[col]['col_name'] + " is expected to be " \
                    + ret["expected"]
                if ret["expected"] == 'DECIMAL':
                    result = result + " with " + str(ret["decimal_points"]) + " decimals points"
                if ret["expected"] == 'DATE':
                    date_format_errors = date_format_errors + 1
                    result = result + " with " + str(ret["dt_format"]) + " format"
            else:
                # range test test
                if ffdetails[col]['col_data_type'] == 'INT' or ffdetails[col]['col_data_type'] == 'DECIMAL':
                    if ffdetails[col]['min_value'] or ffdetails[col]['max_value']:
                        ret = models.test_range(data[col][row], ffdetails[col]['min_value'],
                                                ffdetails[col]['max_value'])
                        if ret['result'] is False:
                            range_errors = range_errors + 1
                            result = result + "\ncolumn " + ffdetails[col]['col_name'] + "is not in range" + ret[
                                'message']

            # required field test
            if ffdetails[col]['required'] == 1 or ffdetails[col]['is_pk'] == 1:
                ret = models.test_required(data[col][row])
                if ret['result'] is False:
                    required_errors = required_errors + 1
                    if ffdetails[col]['required'] == 1:
                        result = result + "\ncolumn " + ffdetails[col]['col_name'] + "is required but value is " \
                                                                                      "missing "
                    if ffdetails[col]['is_pk'] == 1:
                        result = result + "\ncolumn " + ffdetails[col]['col_name'] + "is key but value is missing"

            # email field test
            if ffdetails[col]['format'] == 'email':
                ret = models.test_email(data[col][row])
                if ret['result'] is False:
                    email_format_errors = email_format_errors + 1
                    result = result + "\ncolumn " + ffdetails[col]['col_name'] + "is not a valid email address "

        if result != '':
            # line = line + " data type results : " + result
            line.append(result)
        else:
            rows_passed = rows_passed + 1
        # lines.append(line)
        if details == '1':
            writer.writerow(line)
        line = []
        result = ''

    if details == '1':
        print("downloading")
        return response
    else:
        context_data = {
            'ffdata': ffdata[0],
            'ffdetails': ffdetails,
            'name': definition,
            'datatype_errors': datatype_errors,
            'required_errors': required_errors,
            'pk_errors': pk_errors,
            'email_format_errors': email_format_errors,
            'date_format_errors': date_format_errors,
            'rows_passed': rows_passed,
            'range_errors': range_errors,
            'all_null_errors': all_null_errors,
            'file_name': file_name
        }
        print("rendering html")
        return render(request, 'run.html', context_data)


def post_data(request):
    ret = {'success': True, 'message': ''}
    updated = {'successfully': False, 'message': ''}

    if 'record_id' not in request.POST:
        ret['success'] = False
        ret['message'] = ret['message'] + "\n Record_id not found. Record not updated."

    if 'field' not in request.POST:
        ret['success'] = False
        ret['message'] = ret['message'] + "\n field not found. Record not updated."

    if 'val' not in request.POST:
        ret['success'] = False
        ret['message'] = ret['message'] + "\n val not found. Record not updated."

    if ret['success']:
        updated = models.set_structure_field(request.POST['record_id'], request.POST['field'], request.POST['val'])
        if not updated['successfully']:
            ret['success'] = False
            ret['message'] = ret['message'] + "\n Error Updating record." + updated['message']

    return JsonResponse(ret)


def post_ff_data(request):
    ret = {'success': True, 'message': ''}
    updated = {'successfully': False, 'message': ''}

    if 'name' not in request.POST:
        ret['success'] = False
        ret['message'] = ret['message'] + "\n Key: Name not found. Record not updated."

    if 'field' not in request.POST:
        ret['success'] = False
        ret['message'] = ret['message'] + "\n field not found. Record not updated."

    if 'val' not in request.POST:
        ret['success'] = False
        ret['message'] = ret['message'] + "\n val not found. Record not updated."

    if ret['success']:
        updated = models.set_ff_field(request.POST['name'], request.POST['field'], request.POST['val'])
        if not updated['successfully']:
            ret['success'] = False
            ret['message'] = ret['message'] + "\n Error Updating record." + updated['message']

    return JsonResponse(ret)


def check_name(request):
    ret = {'success': True, 'message': ''}

    if 'name' not in request.GET:
        ret['success'] = False
        ret['message'] = ret['message'] + "\n Invalid request."

    if ret['success']:
        ret["success"] = models.check_name(request.GET['name'])
        if not ret["success"]:
            ret['success'] = False
            ret['message'] = "Name not available!"

    return JsonResponse(ret)


def create(request):
    ret = {'success': True, 'message': ''}
    fields = {'name': '', 'description': '', 'is_header': 0, 'file_type': ''}

    if 'name' not in request.POST:
        ret['success'] = False
        ret['message'] = ret['message'] + "\n Invalid request."
    else:
        fields['name'] = request.POST['name']

    if 'description' in request.POST:
        fields['description'] = request.POST['description']

    if 'is_header' in request.POST:
        if request.POST['is_header'] == "on":
            fields['is_header'] = 1
        else:
            fields['is_header'] = 0

    if 'file_type' in request.POST:
        fields['file_type'] = request.POST['file_type']

    if ret['success']:
        out = models.create(fields)
        ret['success'] = out['successfully']
        if not ret["success"]:
            ret['success'] = False
            ret['message'] = out['message']

    if ret['success']:
        return redirect('/tools/fit-and-format/')
    else:
        return redirect('/tools/fit-and-format/create-new-definition/?ret.success=False&ret.message='+ret['message'])


def add_row(request):
    keys = ''
    name = request.POST['name']
    col_name = request.POST['col_name']

    if 'keys' in request.POST:
        keys = request.POST['keys']

    ret = models.add_row(name, col_name, keys)
    return redirect('/tools/fit-and-format/structure/?name='+name+'&success='+str(ret['successfully'])+'&message='
                    + ret['message'])


def create_copy(request):
    name = False

    if 'name' in request.POST:
        name = request.POST['name']

    if not name:
        return redirect(
            '/tools/fit-and-format/?success=false&message=Error copying. No SRC provided')

    ret = models.create_copy(name)

    return redirect(
        '/tools/fit-and-format/?name=' + ret['name'] + '&success=' + str(ret['successfully']) + '&message='
        + ret['message'])


def col_suggestions(request):
    col_name = request.GET['name']

    html = models.col_suggestions(col_name)

    return HttpResponse(html)


def formats(request):
    return render(request, "formats.html")
