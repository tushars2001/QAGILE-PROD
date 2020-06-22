import os
from django.conf import settings
from django.contrib.auth.decorators import login_required
from django.core.files.storage import FileSystemStorage
from django.shortcuts import render
from . import models
import xmltodict
import xml.dom.minidom
from ..admin.models import get_all_person
# Create your views here.


@login_required(login_url='/identity/')
def analytics_home(request):

    if request.method == 'POST' and 'myfile' in request.FILES and request.FILES['myfile']:
        print("In FILE Upload")
        myfile = request.FILES['myfile']
        fs = FileSystemStorage()
        try:
            os.remove(os.path.join(settings.MEDIA_ROOT, '50197.xml'))
        except FileNotFoundError:
            print("No file")

        filename = fs.save('50197.xml', myfile)
        uploaded_file_url = fs.url(filename)
        return render(request, "analytics_home.html", {
            'uploaded_file_url': uploaded_file_url
        })

    if request.method == "POST" and 'process' in request.POST:
        print("In FILE Process")
        processed = load_tenrox()
        return render(request, "analytics_home.html", {
            'processed': processed
        })

    return render(request, "analytics_home.html")


def load_tenrox():
    xmlObject = \
        xml.dom.minidom.parse(os.path.join(settings.MEDIA_ROOT, '50197.xml'))
    tenrox_xml = xmlObject.toprettyxml()
    tenrox_dict = xmltodict.parse(tenrox_xml)
    print(os.path.join(settings.MEDIA_ROOT, '50197.xml'))
    print(xmlObject)
    processed = models.load_tenrox_data(tenrox_dict)

    return processed


def planned_actuals(request):
    chartdata = {}

    filters = {'org': '', 'domains': '', 'ppmids': '', 'vnids': ''}

    if 'org_select' in request.GET:
        filters['org'] = request.GET['org_select']

    if 'domain_ids' in request.GET:
        filters['domains'] = request.GET.getlist('domain_ids')

    if 'ppm_ids' in request.GET:
        filters['ppmids'] = request.GET.getlist('ppm_ids')

    if 'vnids' in request.GET:
        filters['vnids'] = request.GET.getlist('vnids')

    if 'dt_range' in request.GET:
        filters['dt_range'] = request.GET.getlist('dt_range')

    if 'dt_range' in request.GET:
        chartdata = models.get_chart_data(filters)

    context_var = {
        'domains_info': models.get_domains_info(),
        'ppm_info': models.get_project_info(),
        'persons': models.get_persons_info(),
        'chartdata': chartdata,
        'domain_projects': models.get_project_domains(),
        'project_persons': models.get_project_persons(),
    }

    print(context_var)

    return render(request, "planned_actuals.html", context_var)


def resource_plan(request):
    chartdata = {}

    filters = {'plan': '', 'domains': '', 'ppmids': '', 'vnids': ''}

    if 'plan_select' in request.GET:
        filters['plan'] = request.GET['plan_select']

    if 'domain_ids' in request.GET:
        filters['domains'] = request.GET.getlist('domain_ids')

    if 'ppm_ids' in request.GET:
        filters['ppmids'] = request.GET.getlist('ppm_ids')

    if 'vnids' in request.GET:
        filters['vnids'] = request.GET.getlist('vnids')

    if 'dt_range' in request.GET:
        filters['dt_range'] = request.GET.getlist('dt_range')

    if 'dt_range' in request.GET:
        chartdata = models.get_resource_data(filters)

    persons_all = get_all_person()
    persons = [
        {k: v for k, v in d.items() if k in ('vnid', 'first_name', 'last_name', 'rate', 'domain_name', 'role', 'loc')}
        for d in persons_all]

    context_var = {
        'domains_info': models.get_domains_info(),
        'ppm_info': models.get_project_info(),
        'persons': persons,
        'chartdata': chartdata,
        'static_tbl': models.get_statictbl(filters),
        'domain_projects': models.get_project_domains(),
        'project_persons': models.get_project_persons(),
        'datahead': models.get_datahead(filters)[0]
    }

    print(context_var)

    return render(request, "resource_plan.html", context_var)
