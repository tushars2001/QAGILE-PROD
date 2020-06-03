from django.shortcuts import render
from django.http import JsonResponse
from . import models
from django.contrib.auth.decorators import login_required
from django.shortcuts import redirect
from django.contrib.auth import get_user


@login_required(login_url='/identity/')
def team(request):
    # need_login(request)
    context_var = {
        'teamdata': models.get_all_person(),
        'domains': models.get_all_domain(),
        'rates': models.get_all_rates(),
        'roles': models.get_all_roles(),
        'locations': models.get_all_locations()
    }

    return render(request, 'team.html', context_var)


@login_required(login_url='/identity/')
def rfs(request):
    return render(request, 'rfs.html')


@login_required(login_url='/identity/')
def editperson(request):
    vnid=''

    if request.method == "GET":
        if 'vnid' in request.GET:
            vnid = request.GET['vnid']

    if request.method == "POST":
        if 'vnid' in request.POST:
            if 'del_button' in request.POST:
                vnid = models.delete_object(
                    'vnid', request.POST['vnid'], get_user(request).username, 'qagile_person')
                return redirect('/manage/team/')
            else:
                vnid = models.update_person(request.POST)

    persondata = models.get_person_by_id(vnid)

    if not persondata:
        persondata = [{'vnid': '', 'first_name': '', '': '', 'email': '', 'domain_id': '', 'category': '',
                       'rate_id': '', 'phone': '', 'created': None, 'role_id': '', 'location_id': '', 'city': '',
                       'rate': '', 'role': '', 'domain_name': ''}]
    print(persondata)
    context_var = {
        'persondata': persondata,
        'domains': models.get_all_domain(),
        'rates': models.get_all_rates(),
        'roles': models.get_all_roles(),
        'locations': models.get_all_locations()
    }

    return render(request, 'editperson.html', context_var)


@login_required(login_url='/identity/')
def editdomains(request):
    domain_id = 'Null'

    if request.method == "GET":
        if 'domain_id' in request.GET:
            domain_id = request.GET['domain_id']

    if request.method == "POST":
        if 'domain_id' in request.POST:
            if 'del_button' in request.POST:
                domain_id = models.delete_object(
                    'domain_id', request.POST['domain_id'], get_user(request).username, 'qagile_domains')
                return redirect('/manage/team/')
            else:
                domain_id = models.update_domain(request.POST)


    domaindata = models.get_domain_by_id(domain_id)

    if not domaindata:
        domaindata = [{'domain_id': None, 'domain_name': '', 'domain_lead': '', 'domain_lead_two': '',
                       'pom': '', 'dl_name': '', 'pom_name': '', 'dl_name_2': ''}]

    context_var = {
        'domaindata': domaindata,
        'dldata': models.get_all_domain_leads(),
        'pomdata': models.get_all_portfolio_managers()
    }

    print(context_var)

    return render(request, 'editdomain.html', context_var)


@login_required(login_url='/identity/')
def editrole(request):
    role_id = 'Null'

    if request.method == "GET":
        if 'role_id' in request.GET:
            role_id = request.GET['role_id']

    if request.method == "POST":
        if 'role_id' in request.POST:
            if 'del_button' in request.POST:
                role_id = models.delete_object(
                    'role_id', request.POST['role_id'], get_user(request).username, 'qagile_person_role')
                return redirect('/manage/team/')
            else:
                role_id = models.update_role(request.POST)

    roledata = models.get_role_by_id(role_id)
    print("*****ROOOLLLLEEEEE******")
    print(roledata)

    if not roledata:
        roledata = [{'role_id': None, 'role': ''}]

    context_var = {
        'roledata': roledata
    }

    print(context_var)

    return render(request, 'editrole.html', context_var)


@login_required(login_url='/identity/')
def editlocation(request):
    location_id = 'Null'

    if request.method == "GET":
        if 'location_id' in request.GET:
            location_id = request.GET['location_id']

    if request.method == "POST":
        if 'location_id' in request.POST:
            if 'del_button' in request.POST:
                location_id = models.delete_object(
                    'location_id', request.POST['location_id'], get_user(request).username, 'qagile_person_location')
                return redirect('/manage/team/')
            else:
                location_id = models.update_location(request.POST)

    locationdata = models.get_location_by_id(location_id)
    print("*****LOCCCCCC******")
    print(locationdata)

    if not locationdata:
        locationdata = [{'location_id': None, 'city': '', 'state': None, 'zip': None, 'country': '',
                         'loc_code': ''}]

    context_var = {
        'locationdata': locationdata
    }

    print(context_var)

    return render(request, 'editlocation.html', context_var)


@login_required(login_url='/identity/')
def editrate(request):
    rate_id = 'Null'

    if request.method == "GET":
        if 'rate_id' in request.GET:
            rate_id = request.GET['rate_id']

    if request.method == "POST":
        if 'rate_id' in request.POST:
            if 'del_button' in request.POST:
                rate_id = models.delete_object(
                    'rate_id', request.POST['rate_id'], get_user(request).username, 'qagile_person_rate')
                return redirect('/manage/team/')
            else:
                rate_id = models.update_rate(request.POST)

    ratedata = models.get_rate_by_id(rate_id)
    print("*****RATEEEE******")
    print(ratedata)

    if not ratedata:
        ratedata = [{'rate_id': None, 'rate': None, 'category': ''}]


    context_var = {
        'ratedata': ratedata
    }

    print(context_var)

    return render(request, 'editrate.html', context_var)


@login_required(login_url='/identity/')
def admin(request):
    return render(request, 'admin.html')


@login_required(login_url='/identity/')
def persons2(request):
    data = {"results": {
        "question": "This is a question",
        "created_by": "Tushar",
        "pub_date": "1-1-1"
    }}
    return JsonResponse(data)


@login_required(login_url='/identity/')
def ldif(request):
    data = models.get_all_person()
    return render(request, 'ldif.html', {'data': data})

