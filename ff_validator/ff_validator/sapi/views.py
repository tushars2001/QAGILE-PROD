import json
from django.shortcuts import HttpResponse
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from . import account as ACCOUNT, definition as DEFINITION, file as FILE, process as PROCESS, summary as SUMMARY
from . import schema as SCHEMA, structure as STRUCTURE, suggestions as SUGGESTIONS, metadata as METADATA
from . import reset_link as RESET_LINK
from django.contrib.auth.decorators import user_passes_test
from ..identity import models as identity


@csrf_exempt
@user_passes_test(identity.auth, login_url="/identity/account/login/", redirect_field_name=None)
def account(request):

    response = {'data': {}, 'status': 400}

    if request.method == 'GET':
        if 'name' in request.GET:
            response = ACCOUNT.GET(request.GET['name'])

    elif request.method == 'POST':
        body = json.loads(request.body)
        if 'name' in body \
                and 'email' in body \
                and 'requester_name' in body \
                and 'phone' in body \
                and 'password' in body:
            response = ACCOUNT.POST(body)

    elif request.method == 'PUT':
        body = json.loads(request.body)
        if 'name' in body \
                and 'email' in body \
                and 'requester_name' in body \
                and 'phone' in body:
            response = ACCOUNT.PUT(body)

    elif request.method == 'DELETE':
        if 'name' in request.GET:
            response = ACCOUNT.DELETE(request.GET['name'])

    else:
        return HttpResponse('', status=405)

    return JsonResponse(response['data'], status=response['status'], safe=False)


@csrf_exempt
@user_passes_test(identity.auth, login_url="/identity/account/login/", redirect_field_name=None)
def schema(request):

    response = {'data': {}, 'status': 400}

    if request.method == 'POST':
        body = json.loads(request.body)
        if 'name' in body:
            response = SCHEMA.POST(body['name'])
    elif request.method == 'DELETE':
        if 'name' in request.GET:
            response = SCHEMA.DELETE(request.GET['name'])
    else:
        return HttpResponse('', status=405)

    return JsonResponse(response['data'], status=response['status'])


@csrf_exempt
@user_passes_test(identity.auth, login_url="/identity/account/login/", redirect_field_name=None)
def definition(request):
    response = {'data': {}, 'status': 400}

    if request.method == 'GET':
        if 'account_name' in request.GET:
            response = DEFINITION.GET(request.GET)

    elif request.method == 'POST':
        body = json.loads(request.body)
        if 'name' in body \
                and 'description' in body \
                and 'file_type' in body \
                and 'account_name' in body \
                and 'is_header' in body:
            response = DEFINITION.POST(body)

    elif request.method == 'PUT':
        body = json.loads(request.body)
        if 'name' in body \
                and 'description' in body \
                and 'file_type' in body \
                and 'account_name' in body \
                and 'is_header' in body:
            response = DEFINITION.PUT(body)

    elif request.method == 'DELETE':
        if 'name' in request.GET and 'account_name' in request.GET:
            response = DEFINITION.DELETE(request.GET['name'], request.GET['account_name'])

    else:
        return HttpResponse('keys', status=200)

    return JsonResponse(response['data'], status=response['status'], safe=False)


@csrf_exempt
@user_passes_test(identity.auth, login_url="/identity/account/login/", redirect_field_name=None)
def structure(request):
    response = {'data': {}, 'status': 400}

    if request.method == 'GET':
        if 'definition_name' in request.GET and 'account_name' in request.GET:
            response = STRUCTURE.GET(request.GET['definition_name'], request.GET['account_name'])

    elif request.method == 'DELETE':
        if 'definition_name' in request.GET and 'account_name' in request.GET:
            response = STRUCTURE.DELETE(request.GET['name'], request.GET['account_name'])

    else:
        return HttpResponse('', status=200)

    return JsonResponse(response['data'], status=response['status'], safe=False)


@csrf_exempt
@user_passes_test(identity.auth, login_url="/identity/account/login/", redirect_field_name=None)
def structure_column(request):
    response = {'data': {}, 'status': 400}

    definition_name = request.get_full_path().split("/")[-3]

    if request.method == 'GET':
        if ('col_name' in request.GET or 'record_id' in request.GET) and 'account_name' in request.GET:
            if 'col_name' not in request.GET:
                col_name = None
            else:
                col_name = request.GET['col_name']
            response = STRUCTURE.GET_COLUMN(col_name, definition_name,
                                            request.GET['account_name'], request.GET)
            print(response['data'])

    elif request.method == 'DELETE':
        if 'col_name' in request.GET and 'account_name' in request.GET:
            response = STRUCTURE.DELETE_COLUMN(request.GET['col_name'], definition_name, request.GET['account_name'])

    elif request.method == 'POST':
        body = json.loads(request.body)
        if 'order' in body \
                and 'col_name' in body \
                and 'col_data_type' in body \
                and 'required' in body \
                and 'is_fixed_len' in body \
                and 'format' in body \
                and 'min_value' in body \
                and 'max_value' in body \
                and 'is_pk' in body \
                and 'all_null' in body \
                and 'account_name' in body \
                and 'decimals' in body:
            response = STRUCTURE.POST_COLUMN(body, definition_name)

    elif request.method == 'PUT':
        body = json.loads(request.body)
        if 'order' in body \
                and 'col_name' in body \
                and 'new_col_name' in body \
                and 'col_data_type' in body \
                and 'required' in body \
                and 'is_fixed_len' in body \
                and 'format' in body \
                and 'min_value' in body \
                and 'max_value' in body \
                and 'is_pk' in body \
                and 'account_name' in body \
                and 'all_null' in body \
                and 'decimals' in body:
            response = STRUCTURE.PUT_COLUMN(body, definition_name)

    else:
        return HttpResponse('', status=200)

    print(response['data'])
    return JsonResponse(response['data'], status=response['status'], safe=False)


@csrf_exempt
@user_passes_test(identity.auth, login_url="/identity/account/login/", redirect_field_name=None)
def suggestions(request):

    if request.method == 'GET':
        response = SUGGESTIONS.GET(request.GET)
    else:
        return HttpResponse('', status=405)

    return JsonResponse(response['data'], status=response['status'])


@csrf_exempt
@user_passes_test(identity.auth, login_url="/identity/account/login/", redirect_field_name=None)
def file(request):

    if request.method == 'GET':
        response = FILE.GET(request.GET)
    elif request.method == 'POST':
        response = FILE.POST(json.loads(request.body))
    elif request.FILE == 'DELETE':
        response = ACCOUNT.DELETE(request.DELETE)
    else:
        return HttpResponse('', status=405)

    return JsonResponse(response['data'], status=response['status'])


@csrf_exempt
@user_passes_test(identity.auth, login_url="/identity/account/login/", redirect_field_name=None)
def account_key(request):
    response = {'data': {}, 'status': 400}

    name = request.get_full_path().split("/")[-3]

    check = ACCOUNT.GET(name)['status']

    if check == 204:
        response = {'data': {'error': 'Invalid Account'}, 'status': 200}

    elif request.method == 'POST':
        response = ACCOUNT.POST_KEY(name)

    elif request.method == 'PUT':
        body = json.loads(request.body)
        if 'active' in body and 'apikey' in body:
            response = ACCOUNT.PUT_KEY(body, name)

    elif request.method == 'DELETE':
        if 'apikey' in request.GET:
            response = ACCOUNT.DELETE_KEY(request.GET, name)

    else:
        return HttpResponse('', status=405)

    return JsonResponse(response['data'], status=response['status'], safe=False)


@csrf_exempt
@user_passes_test(identity.auth, login_url="/identity/account/login/", redirect_field_name=None)
def account_keys(request):
    response = {'data': {}, 'status': 400}

    name = request.get_full_path().split("/")[-3]

    if request.method == 'GET':
        response = ACCOUNT.GET_KEYS(name)

    elif request.method == 'DELETE':
        response = ACCOUNT.DELETE_KEYS(name)

    else:
        return HttpResponse('', status=200)

    return JsonResponse(response['data'], status=response['status'], safe=False)


@csrf_exempt
@user_passes_test(identity.auth, login_url="/identity/account/login/", redirect_field_name=None)
def process(request):

    if request.method == 'GET':
        response = PROCESS.GET(request.GET)
    elif request.method == 'POST':
        response = PROCESS.POST(json.loads(request.body))
    else:
        return HttpResponse('', status=405)

    return JsonResponse(response['data'], status=response['status'])


@csrf_exempt
@user_passes_test(identity.auth, login_url="/identity/account/login/", redirect_field_name=None)
def metadata(request):

    response = {'data': {}, 'status': 400}

    if request.method == 'GET':
        response = METADATA.GET(request.GET)

    elif request.method == 'POST':
        body = json.loads(request.body)
        if 'key' in body \
                and 'type' in body \
                and 'value' in body:
            response = METADATA.POST(body)

    elif request.method == 'PUT':
        body = json.loads(request.body)
        if 'key' in body \
                and 'type' in body \
                and 'active' in body \
                and 'record_id' in body \
                and 'value' in body:
            response = METADATA.PUT(body)

    elif request.method == 'DELETE':
        response = METADATA.DELETE(request.GET)

    else:
        return HttpResponse('keys', status=200)

    return JsonResponse(response['data'], status=response['status'], safe=False)


@csrf_exempt
@user_passes_test(identity.auth, login_url="/identity/account/login/", redirect_field_name=None)
def summary(request):

    response = {'data': {}, 'status': 400}

    if request.method == 'GET':
        response = SUMMARY.GET(request.GET)
        for row in range(len(response['data']['test_summary_details'])):
            try:
                response['data']['test_summary_details'][row]['summary'] = \
                    json.loads(response['data']['test_summary_details'][row]['summary'].replace("'", '"'))
            except json.decoder.JSONDecodeError:
                print("ERROR DECODING SUMMARY")

    elif request.method == 'POST':
        body = json.loads(request.body)
        if 'definition_name' in body \
                and 'runid' in body \
                and 'summary' in body:
            body['summary'] = str(body['summary']).replace("'", '"')
            response = SUMMARY.POST(body)

    else:
        return HttpResponse('keys', status=200)

    return JsonResponse(response['data'], status=response['status'], safe=False)


@csrf_exempt
@user_passes_test(identity.auth, login_url="/identity/account/login/", redirect_field_name=None)
def reset_link(request):
    response = {'data': {}, 'status': 400}

    if request.method == 'GET':
        if 'account_name' in request.GET or 'code' in request.GET:
            response = RESET_LINK.GET(request.GET)

    elif request.method == 'POST':
        body = json.loads(request.body)
        if 'code' in body \
                and 'email' in body \
                and 'account_name' in body:
            response = RESET_LINK.POST(body)

    elif request.method == 'PUT':
        body = json.loads(request.body)
        if 'active' in body \
                and 'account_name' in body \
                and 'code' in body:
            response = RESET_LINK.PUT(body)

    elif request.method == 'DELETE':
        if 'code' in request.GET and 'account_name' in request.GET:
            response = RESET_LINK.DELETE(request.GET['code'], request.GET['account_name'])

    else:
        return HttpResponse('', status=400)

    return JsonResponse(response['data'], status=response['status'], safe=False)


@csrf_exempt
@user_passes_test(identity.auth, login_url="/identity/account/login/", redirect_field_name=None)
def create_copy(account_name, definition_name):
    response = {'data': {}, 'status': 400}

    if definition_name:
        response = DEFINITION.create_copy(account_name, definition_name)

    else:
        return HttpResponse('', status=200)

    return JsonResponse(response['data'], status=response['status'], safe=False)
