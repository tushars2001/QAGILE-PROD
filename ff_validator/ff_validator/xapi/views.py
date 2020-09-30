from django.http import HttpResponse
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth.decorators import user_passes_test
from ..identity import models as identity
import json
from ..sapi import views as sapi
from . import models
from django.http import JsonResponse

response = {'data': {}, 'status': 400}


@csrf_exempt
@user_passes_test(identity.auth, login_url="/identity/account/login/", redirect_field_name=None)
def account(request):
    if request.method == 'GET':
        if 'name' in request.GET:
            response = sapi.account(request)
        else:
            return HttpResponse('', status=405)

    elif request.method == 'POST':
        bd = json.loads(request.body)
        if 'name' in bd and 'password' in bd:
            if 'email' not in bd:
                bd['email'] = ''
            if 'requester_name' not in bd:
                bd['requester_name'] = ''
            if 'phone' not in bd:
                bd['phone'] = ''

            class Req:
                method = 'POST'
                headers = {'account-id': 'test', 'account-secret': 'test'}
                body = '{"name": "' + bd['name'] \
                       + '", "password": "' + bd['password'] \
                       + '", "email": "' + bd['email'] \
                       + '", "requester_name": "' + bd['requester_name'] \
                       + '", "phone": "' + bd['phone'] + '"} '

            req = Req()

            response = sapi.account(req)

        else:
            return HttpResponse('', status=405)
    else:
        response['status'] = 501

    return response


@csrf_exempt
@user_passes_test(identity.auth, login_url="/identity/account/login/", redirect_field_name=None)
def definition(request):
    if request.method == 'GET':
        if 'account_name' in request.GET:
            response = sapi.definition(request)
        else:
            return HttpResponse('', status=405)

    elif request.method == 'POST':
        bd = json.loads(request.body)
        if 'name' in bd and 'file_type' in bd and 'account_name' in bd:
            if 'is_header' not in bd:
                bd['is_header'] = 0
            if 'description' not in bd:
                bd['description'] = ''

            class Req:
                method = 'POST'
                headers = {'account-id': 'test', 'account-secret': 'test'}
                body = '{"name": "' + bd['name'] \
                       + '", "file_type": "' + bd['file_type'] \
                       + '", "is_header": "' + bd['is_header'] \
                       + '", "account_name": "' + bd['account_name'] \
                       + '", "description": "' + bd['description'] + '"} '

            req = Req()

            response = sapi.definition(req)

        else:
            return HttpResponse('', status=405)

    elif request.method == 'PUT':
        body = json.loads(request.body)
        if 'name' in body \
                and 'description' in body \
                and 'file_type' in body \
                and 'account_name' in body \
                and 'is_header' in body:
            response = sapi.definition(request)
    else:
        response['status'] = 501

    return response


@csrf_exempt
@user_passes_test(identity.auth, login_url="/identity/account/login/", redirect_field_name=None)
def structure(request):
    if request.method == 'GET':
        if 'account_name' in request.GET and 'definition_name' in request.GET:
            response = sapi.structure(request)
        else:
            return HttpResponse('', status=405)

    elif request.method == 'POST':
        bd = json.loads(request.body)
        if 'col_name' in bd \
                and 'account_name' in bd \
                and 'name' in bd:

            if 'col_data_type' not in bd:
                bd['col_data_type'] = ''
            if 'required' not in bd:
                bd['required'] = ''
            if 'is_fixed_len' not in bd:
                bd['is_fixed_len'] = ''
            if 'format' not in bd:
                bd['format'] = ''
            if 'min_value' not in bd:
                bd['min_value'] = ''
            if 'max_value' not in bd:
                bd['max_value'] = ''
            if 'is_pk' not in bd:
                bd['is_pk'] = ''
            if 'all_null' not in bd:
                bd['all_null'] = ''
            if 'decimals' not in bd:
                bd['decimals'] = ''
            if 'keys' not in bd:
                bd['keys'] = ''
            if 'order' not in bd:
                bd['order'] = ''
            if 'max_len' not in bd:
                bd['max_len'] = ''

            class Req:
                method = 'POST'
                headers = {'account-id': 'test', 'account-secret': 'test'}
                body = '{"name": "' + bd['name'] \
                       + '", "col_name": "' + bd['col_name'] \
                       + '", "required": "' + bd['required'] \
                       + '", "col_data_type": "' + bd['col_data_type'] \
                       + '", "is_fixed_len": "' + bd['is_fixed_len'] \
                       + '", "format": "' + bd['format'] \
                       + '", "min_value": "' + bd['min_value'] \
                       + '", "max_value": "' + bd['max_value'] \
                       + '", "is_pk": "' + bd['is_pk'] \
                       + '", "all_null": "' + bd['all_null'] \
                       + '", "account_name": "' + bd['account_name'] \
                       + '", "max_len": "' + bd['max_len'] \
                       + '", "order": "' + bd['order'] \
                       + '", "keys": "' + bd['keys'] \
                       + '", "decimals": "' + bd['decimals'] + '"} '

                def get_full_path(self):
                    return '/sapi/structure/' + bd['name'] + '/column/'

            req = Req()

            response = sapi.structure_column(req)

        else:
            return HttpResponse('', status=405)
    else:
        response['status'] = 501

    return response


@csrf_exempt
@user_passes_test(identity.auth, login_url="/identity/account/login/", redirect_field_name=None)
def structure_column(request):
    response = {'data': {}, 'status_code': 400}

    definition_name = request.get_full_path().split("/")[-3]

    if request.method == 'GET':
        if ('col_name' in request.GET or 'record_id' in request.GET) and 'account_name' in request.GET:
            response = sapi.structure_column(request)

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
        request.body = request.body.replace('": None', '": null')
        print(request.body)
        body = json.loads(request.body)
        print(body)
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
            response = sapi.structure_column(request)
            print("XAPI RETURN RESPONSE")
            print(response.content)

    else:
        return HttpResponse('', status=200)


    # return JsonResponse(response['data'], status=response['status'], safe=False)
    return response


@csrf_exempt
@user_passes_test(identity.auth, login_url="/identity/account/login/", redirect_field_name=None)
def reset_link(request):
    if request.method == 'GET':
        if 'account_name' in request.GET or 'code' in request.GET:
            response = sapi.reset_link(request)
        else:
            return HttpResponse('', status=405)

    elif request.method == 'POST':
        bd = json.loads(request.body)

        if 'account_name' in bd and 'email' in bd and 'code' in bd:
            class Req:
                method = 'POST'
                headers = {'account-id': 'test', 'account-secret': 'test'}
                body = '{"account_name": "' + bd['account_name'] + '", "email": "' \
                       + bd['email'] + '", "code": "' + bd['code'] + '"} '

            req = Req()

            response = sapi.reset_link(req)

        else:
            return HttpResponse('', status=405)
    else:
        response['status'] = 501

    return response


def col_suggestions(request):
    html = ''
    if request.method == 'GET':
        if 'col_name' in request.GET:
            html = models.col_suggestions(request.GET['col_name'], request.user.username)

    return html


@csrf_exempt
@user_passes_test(identity.auth, login_url="/identity/account/login/", redirect_field_name=None)
def summaries(request):
    if request.method == 'GET':
        if 'account_name' in request.GET:
            response = sapi.summary(request)
        else:
            return HttpResponse('', status=405)

    elif request.method == 'POST':
        bd = json.loads(request.body)
        if 'name' in bd and 'file_type' in bd and 'account_name' in bd:
            if 'is_header' not in bd:
                bd['is_header'] = 0
            if 'description' not in bd:
                bd['description'] = ''

            class Req:
                method = 'POST'
                headers = {'account-id': 'test', 'account-secret': 'test'}
                body = '{"name": "' + bd['name'] \
                       + '", "file_type": "' + bd['file_type'] \
                       + '", "is_header": "' + bd['is_header'] \
                       + '", "account_name": "' + bd['account_name'] \
                       + '", "description": "' + bd['description'] + '"} '

            req = Req()

            response = sapi.definition(req)

        else:
            return HttpResponse('', status=405)

    elif request.method == 'PUT':
        body = json.loads(request.body)
        if 'name' in body \
                and 'description' in body \
                and 'file_type' in body \
                and 'account_name' in body \
                and 'is_header' in body:
            response = sapi.definition(request)
    else:
        response['status'] = 501

    return response


@csrf_exempt
@user_passes_test(identity.auth, login_url="/identity/account/login/", redirect_field_name=None)
def create_copy(request):

    if request.method == 'POST' and 'name' in request.POST:
       response = sapi.create_copy(request.user.username, request.POST['name'])
    else:
        response['status'] = 501

    return response
