from django.shortcuts import render
from . import models
from django.shortcuts import redirect
from django.contrib.auth import authenticate, login, logout
from ..admin.models import get_all_domain
from django.contrib.auth.decorators import login_required


# Create your views here.


def login_page(request):
    return render(request, 'login.html')


def logout_user(request):
    logout(request)
    return redirect("/")


def check_login(request):
    username = request.POST['user']
    password = request.POST['password']

    user = authenticate(username=username, password=password)
    if user is None:
        ret = "/identity/?error=Authentication Failed!"
        if 'next' in request.POST:
            ret = ret + "&next=" + request.POST.get('next')
        return redirect(ret)
    else:
        login(request, user)

    if 'next' in request.POST:
        return redirect(request.POST.get('next'))
    else:
        return redirect("/")


def check_sql(request):
    data = get_all_domain()

    return render(request, "sql_check.html", {'data': data})


@login_required(login_url='/identity/')
def profile(request):
    profile_data = models.get_profile(request.username)
    fields = []
    msg = ''

    if request.method == "POST":
        profile_data = models.set_profile(fields)
        msg = 'Profile Updated!'

    return render(request, "profile.html", {'profile_data': profile_data[0], 'msg': msg})
