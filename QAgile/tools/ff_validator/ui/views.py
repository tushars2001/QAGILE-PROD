from django.shortcuts import render, HttpResponse, redirect
from ..sapi.process import run
from ..sapi import summary as SUMMARY
from ..xapi import views as xapi
import json
from ..identity import models as IDENTITY
from django.contrib.auth.models import User
from django.http import JsonResponse
import datetime
from django.contrib.auth.decorators import login_required


@login_required(login_url='/identity/')
def home(request):
    return render(request, "ff_ui_home.html")


def file(request):
    return render(request, "file.html")


def read(request):
    my_file = ''
    if request.method == 'POST' \
            and 'myfile' in request.FILES and request.FILES['myfile'] and 'definition' in request.POST:
        my_file = request.FILES['myfile']
        ret = run(request.user.username, request.POST['definition'], my_file)
        if 'error' not in ret:
            dto = datetime.datetime.now()
            runid = ret['file_definition']['name'] + "-" + str(dto.year) + str(dto.month) + str(dto.day) + str(dto.hour) \
                    + str(dto.minute) + str(dto.second)
            definition_name = ret['file_definition']['name']
            summary = ret['summary']
            account_name = request.user.username
            data = '''{
                        "definition_name": "''' + definition_name + '''",
                        "runid": "''' + runid + '''",
                        "summary": "''' + str(summary) + '''",
                        "account_name" : "''' + account_name + '''"
                    }'''
            data = json.loads(data)
            response = SUMMARY.POST(data)
    else:
        return redirect("/start-execution/?error=Invalid request")

    return render(request, 'result.html', ret)


def view_account(request):
    context_data = {}

    if request.method == 'POST':
        updated = IDENTITY.update_profile(request.POST, request.user.username)

    u = User.objects.get(username=request.user.username)
    request.user = u
    context_data.update(request.GET)
    return render(request, 'view_account.html', context_data)


def view_definition(request):
    context_data = {}

    # Step 2 build XAPI request
    class Req:
        method = 'GET'
        headers = {'account-id': 'test', 'account-secret': 'test'}
        GET = {'account_name': request.user}

    req = Req()

    # Step 3
    definitions = xapi.definition(req)

    context_data = {'definitions': json.loads(definitions.content)}

    return render(request, 'view_definition.html', context_data)


def update_definition(request):
    ret = {}

    if request.method == 'POST':
        context_data = {"error": "Invalid Request"}
        if 'field' in request.POST and 'val' in request.POST and 'name' in request.POST:

            # Step 2 build XAPI request
            class Req:
                method = 'GET'
                headers = {'account-id': 'test', 'account-secret': 'test'}
                GET = {'account_name': request.user, 'name': request.POST['name']}

            req = Req()
            print(req.GET)
            # Step 3
            definition = xapi.definition(req)
            print(definition)

            if definition.status_code == 200:
                definition = json.loads(definition.content)['definition_details'][0]
                for rec in definition:
                    if rec == request.POST['field']:
                        definition[rec] = request.POST['val']

                class Req:
                    method = 'PUT'
                    headers = {'account-id': 'test', 'account-secret': 'test'}
                    body = '{"name": "' + definition['name'] \
                           + '", "description": "' + definition['description'] \
                           + '", "file_type": "' + definition['file_type'] \
                           + '", "account_name": "' + definition['account_name'] \
                           + '", "is_header": "' + str(definition['is_header']) + '"} '

                req = Req()
                response = xapi.definition(req)

                if response.status_code == 200:
                    ret = {"success": "True"}
                else:
                    ret = {"error": "Error Updating " + response.status_code}

            else:
                ret = {"error": "Definition not found"}

    return JsonResponse(ret)


def view_structure(request):
    context_data = {}
    return render(request, 'view_structure.html', context_data)


def create_structure(request):
    context_data = {}

    # if we know which named definition to edit
    if 'name' in request.GET:
        # Step 2 build XAPI request
        class Req:
            method = 'GET'
            headers = {'account-id': 'test', 'account-secret': 'test'}
            GET = {'account_name': request.user.username, 'definition_name': request.GET['name']}

        req = Req()

        # Step 3
        structure = xapi.structure(req)

        if structure.status_code == 200:
            context_data['structure'] = json.loads(structure.content)
    # show definitions to user to edit
    else:
        # Step 2 build XAPI request
        class Req:
            method = 'GET'
            headers = {'account-id': 'test', 'account-secret': 'test'}
            GET = {'account_name': request.user}

        req = Req()

        # Step 3
        definitions = xapi.definition(req)
        context_data['definitions'] = json.loads(definitions.content)

    context_data.update(request.GET)
    return render(request, 'create_structure.html', context_data)


def update_structure(request):
    ret = {}

    if request.method == 'POST':
        context_data = {"error": "Invalid Request"}
        if 'field' in request.POST and 'val' in request.POST and 'name' in request.POST and 'record_id' in request.POST:

            # Step 2 build XAPI request
            class Req:
                method = 'GET'
                headers = {'account-id': 'test', 'account-secret': 'test'}
                GET = {'account_name': request.user.username, 'definition_name': request.POST['name'],
                       'record_id': request.POST['record_id']}

                def get_full_path(self):
                    return '/sapi/structure/' + request.POST['name'] + '/column/'

            req = Req()
            print(req.GET)
            # Step 3
            structure = xapi.structure_column(req)
            print(structure.content)

            if structure.status_code == 200:
                structure = json.loads(structure.content)['column_details'][0]
                print("PRINTING STRUCTURE*****")
                print(structure)
                bd = '{'

                structure['new_col_name'] = structure['col_name']
                for rec in structure:
                    if rec == request.POST['field']:
                        if rec == 'col_name':
                            structure['new_col_name'] = request.POST['val']
                        else:
                            structure[rec] = request.POST['val']
                    if structure[rec]:
                        bd = bd + '"' + rec + '": "' + str(structure[rec]) + '",'
                    else:
                        bd = bd + '"' + rec + '": None,'

                bd = bd + ' "account_name": "' + request.user.username + '"}'
                print(bd)

                class Req:
                    method = 'PUT'
                    headers = {'account-id': 'test', 'account-secret': 'test'}
                    body = bd

                    def get_full_path(self):
                        return '/sapi/structure/' + request.POST['name'] + '/column/'

                req = Req()
                print("******** REQ PRINTING ")
                print(req)
                response = xapi.structure_column(req)
                print(response)

                if response.status_code == 200:
                    ret = {"success": "True"}
                else:
                    ret = {"error": "Error Updating " + response.status_code}

            else:
                ret = {"error": "Definition not found"}

    return JsonResponse(ret)


def create_definition(request):
    context_data = {}

    if request.method == 'POST':
        context_data = {"error": "Invalid Request"}
        if 'name' in request.POST and 'file_type' in request.POST:
            if 'is_header' in request.POST:
                is_header = 1
            else:
                is_header = 0

            class Req:
                method = 'POST'
                headers = {'account-id': 'test', 'account-secret': 'test'}
                body = '{"name": "' + request.POST['name'] \
                       + '", "file_type": "' + request.POST['file_type'] \
                       + '", "description": "' + request.POST['description'] \
                       + '", "account_name": "' + request.user.username \
                       + '", "is_header": "' + str(is_header) + '"} '

            req = Req()
            response = xapi.definition(req)

            if response.status_code == 201:
                return redirect(
                    "/tools/fit-and-format-validator/create-structure/?message=Definition Created&name=" + request.POST[
                        'name'])
            else:
                context_data = {"error": "Error Creating Definition - " + json.loads(response.content)['code']}
    return render(request, 'create_definition.html', context_data)


def view_result(request):
    context_data = {}

    # Step 2 build XAPI request
    class Req:
        method = 'GET'
        headers = {'account-id': 'test', 'account-secret': 'test'}
        GET = {'account_name': request.user.username}

    req = Req()

    # Step 3
    summaries = xapi.summaries(req)
    if 'status' in summaries and summaries['status'] == 204:
        context_data = {'error': 'No Data Found!'}
    else:
        context_data = {'summaries': json.loads(summaries.content)}
    return render(request, 'view_result.html', context_data)


def about(request):
    context_data = {}
    return render(request, 'about.html', context_data)


def contact(request):
    context_data = {}
    return render(request, 'contact.html', context_data)


def check_account_name(request):
    # Three Step process
    # 1. Sanitize Request
    # 2. Build XAPI req obj
    # 3. Call XAPI

    response = ''
    status = 200
    # Step 1
    if 'account_name' not in request.GET:
        return HttpResponse('', status=400)

    # Step 2 build XAPI request
    class Req:
        method = 'GET'
        headers = {'account-id': 'test', 'account-secret': 'test'}
        GET = {'name': request.GET['account_name']}

    req = Req()

    # Step 3
    call_xapi = xapi.account(req)

    if call_xapi.status_code == 200:
        response = 'FOUND'
    elif call_xapi.status_code == 302:
        status = 403
    return HttpResponse(response, status=status)


def formats(request):
    return render(request, 'formats.html')


def add_row(request):
    if request.method != 'POST':
        return redirect('/tools/fit-and-format-validator/create-structure/?' + request.META['QUERY_STRING'])

    keys = ''
    name = request.POST['name']
    col_name = request.POST['col_name']
    account_name = request.user.username

    if 'keys' in request.POST:
        keys = request.POST['keys']

    class Req:
        method = 'POST'
        headers = {'account-id': 'test', 'account-secret': 'test'}
        body = '{"name": "' + request.POST['name'] \
               + '", "col_name": "' + request.POST['col_name'] \
               + '", "keys": "' + keys \
               + '", "account_name": "' + account_name + '"} '

    req = Req()

    call_xapi = xapi.structure(req)

    if call_xapi.status_code == 201:
        qs = "&success=Column added"
    else:
        qs = "&error=Something wrong. Checking... "
    return redirect('/create-structure/?name=' + name + qs + ')')


def col_suggestions(request):
    html = xapi.col_suggestions(request)
    return HttpResponse(html)


def start_execution(request):
    context_data = {}

    if 'definition' in request.GET:
        # Step 2 build XAPI request
        class Req:
            method = 'GET'
            headers = {'account-id': 'test', 'account-secret': 'test'}
            GET = {'account_name': request.user.username, 'definition_name': request.GET['definition']}

        req = Req()

        # Step 3
        structure = xapi.structure(req)
        context_data.update(json.loads(structure.content))
    else:
        context_data = {"error": "Invalid Request."}
    return render(request, 'start_execution.html', context_data)


def run_test(request):
    context_data = {}

    # Step 2 build XAPI request
    class Req:
        method = 'GET'
        headers = {'account-id': 'test', 'account-secret': 'test'}
        GET = {'account_name': request.user}

    req = Req()

    # Step 3
    definitions = xapi.definition(req)

    context_data = {'definitions': json.loads(definitions.content)}

    return render(request, 'run_test.html', context_data)


def help(request):
    return render(request, "help.html")


def create_copy(request):
    context_data = {"error": "Invalid Request"}

    if request.method == "POST" and 'name' in request.POST:
        class Req:
            method = 'POST'
            headers = {'account-id': 'test', 'account-secret': 'test'}
            body = '{"name": "' + request.POST['name'] \
                   + '", "account_name": "' + request.user.username + '"} '

        req = Req()

        copy = xapi.create_copy(req)
        context_data = {"data": copy}
        return redirect("/tools/fit-and-format-validator/view-definition/?data=")

    return redirect("/tools/fit-and-format-validator/view-definition/?error=Invalid Request")
