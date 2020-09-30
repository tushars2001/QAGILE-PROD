from django.shortcuts import redirect, render
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.models import User
from ..xapi.views import account, reset_link
import validate_email
from .models import get_random_string, reset_password as RP, send_link_email
import json
from django.db import DatabaseError, IntegrityError



def create_account(request):
    context_data = {}

    if request.method == 'POST':
        if create_account_br(request.POST):
            # Step 2 build XAPI request
            # class Req:
            #    method = 'POST'
            #    headers = {'account-id': 'test', 'account-secret': 'test'}
            #    body = '{"name": "' + request.POST['account_name'] + '", "password": "' \
            #           + request.POST['password'] + '"} '

            # req = Req()

            # call_xapi = account(req)
            try:
                user = User.objects.create_user(request.POST['email'], request.POST['email'], request.POST['password'])
                user = authenticate(request, username=request.POST['email'], password=request.POST['password'])
                if user is not None:
                    login(request, user)
                    # Redirect to a success page.
                    context_data = {"success": "Account created! It's great if we know how to address you!<br>"
                                               + " You can update profile later and continue to use app from menu."}
                    return redirect('/view-account/?success=' + context_data['success'])
                else:
                    context_data = {"error": "Error Creating Account"}
            except IntegrityError:
                context_data = {"error": "This email already exists. Try login or resetting password if you forgot."}
            except DatabaseError:
                context_data = {"error": "Something Wrong! Database didn't like it."}
        else:
            context_data = {"error": "Invalid values provided"}

    return render(request, 'create_account.html', context_data)


def login_account(request):
    context_data = {}
    if request.method == 'POST':
        if 'email' in request.POST and 'password' in request.POST:
            user = authenticate(request, username=request.POST['email'], password=request.POST['password'])
            if user is not None:
                login(request, user)
                return redirect("/run-test/")
            else:
                user_exist = User.objects.filter(username=request.POST['email']).exists()
                if not user_exist:
                    context_data = {"error": "NO_USER"}
                else:
                    context_data = {"error": "INVALID_PASSWORD", "user": request.POST['email']}
    return render(request, 'login_account.html', context_data)


def logout_view(request):
    logout(request)
    return redirect("/")


def reset_password(request):
    context_data = {}

    if request.method == 'GET':
        if 'account_name' in request.GET:
            context_data = {"user_get": request.GET['account_name']}
        if 'link' in request.GET:
            if len(request.GET['link']):
                # Step 2 build XAPI request
                class Req:
                    method = 'GET'
                    headers = {'account-id': 'test', 'account-secret': 'test'}
                    GET = {'code': request.GET['link'], 'in_hour': '24', 'active': '1'}

                req = Req()

                # Step 3
                xapi_get_info = reset_link(req)

                if xapi_get_info.status_code == 200:
                    emaillink = json.loads(xapi_get_info.content)['link_details']
                    context_data = {"emaillink": emaillink, "success": "Please update your new password for account:"
                                                                       + emaillink[0]['account_name']}
                else:
                    context_data = {"error": "Link doesn't look fine. May be expired."}

    elif request.method == 'POST':
        context_data = {"error": "Invalid Request"}
        if 'action' in request.POST and 'email' in request.POST:
            user = User.objects.get(username=request.POST['email'])
            if user:
                # do link
                if request.POST['action'] == 'link':
                    if user.email != request.POST['email']:
                        context_data = {"error": "You provided wrong email id"}

                    else:
                        code = get_random_string(64)

                        # Step 2 build XAPI request
                        class POST_Req:
                            method = 'POST'
                            headers = {'account-id': 'test', 'account-secret': 'test'}
                            body = '{"account_name": "' + request.POST['email'] + '", "email": "' \
                                   + request.POST['email'] + '", "code": "' + code + '"} '

                        req = POST_Req()

                        # Step 3
                        post_link = reset_link(POST_Req)
                        if post_link.status_code == 201:
                            email_sent = send_link_email(user, code)
                            if email_sent:
                                context_data = {"success": "Link sent to : " + request.POST['email']}
                            else:
                                context_data = {"error": "Error sending email!"}
                        else:
                            context_data = {"error": "Error creating link!"}
                # do reset
                elif request.POST['action'] == 'reset':
                    if request.POST['password'] == request.POST['password_confirm'] \
                            and len(request.POST['password']) >= 6:
                        auth_status = RP(request.POST['email'], request.POST['password'])
                        if auth_status:
                            context_data = {"success": "Password Reset Success!"}
    else:
        context_data = {"error": "Some Error Occurred"}

    return render(request, 'reset_password.html', context_data)


def dict_fetchall(cursor):
    columns = [col[0] for col in cursor.description]
    return [
        dict(zip(columns, row))
        for row in cursor.fetchall()
    ]


def create_account_br(params):
    if 'email' in params \
            and 'password' in params \
            and 'password_confirm' in params \
            and len(params['email']) <= 150 \
            and len(params['password']) >= 6 \
            and len(params['password_confirm']) >= 6 \
            and params['password_confirm'] == params['password']\
            and validate_email.validate_email(params['email']):
        return True
    else:
        return False


def update_email(request):
    message = 'updated'
    u = User.objects.get(username=request.POST['email'])
    u.email = request.POST['email']
    u.save()

    return redirect(request.META['HTTP_REFERER'].split(request.META['HTTP_HOST'])[-1] + "?message=" + message)
