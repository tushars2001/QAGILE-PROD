import os
from django.shortcuts import render
from django.conf import settings
from . import models
from django.core.files.storage import FileSystemStorage
import pandas as pd
import csv
from django.http import HttpResponse

# Create your views here.


def tools_home(request):
    return render(request, 'tools_home.html')


def fit_format(request):
    ffdata = models.get_ffdata('')

    context_data = {

        'ffdata': ffdata
    }
    return render(request, 'ff.html', context_data)


def structure(request):
    name = ''

    if "name" in request.GET:
        name = request.GET["name"]

    ffdata = models.get_ffdata(name)
    ffdetails = models.get_ffdetails(name)

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
        file_name = request.POST["file_name"]

    ffdata = models.get_ffdata(definition)
    ffdetails = models.get_ffdetails(definition)
    response = None
    if details == '1':
        # Create the HttpResponse object with the appropriate CSV header.
        response = HttpResponse(content_type='text/csv')
        response['Content-Disposition'] = 'attachment; filename="results.csv"'
        writer = csv.writer(response)

    # Using Pandas with a column specification
    data = pd.read_fwf((os.path.join(settings.MEDIA_ROOT, 'POC2_FIXED_6QF7yLU.TXT')),
                       widths=[3, 9, 8, 20, 15, 9], header=None, delimiter="\n\t", dtype='object')
    rows = data.shape[0]
    cols = data.shape[1]
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
        if ffdetails[col]['all_null'] == 0:
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
            'all_null_errors': all_null_errors
        }
        print("rendering html")
        return render(request, 'run.html', context_data)
