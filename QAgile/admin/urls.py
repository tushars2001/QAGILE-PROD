from django.urls import path, include
from . import views


urlpatterns = [
    path('', views.admin),
    path('team/', views.team),
    path('rfs/', views.rfs),
    path('team/person/', views.editperson),
    path('team/domains/', views.editdomains),
    path('team/role/', views.editrole),
    path('team/location/', views.editlocation),
    path('team/rate/', views.editrate),
    path('team/ldif/', views.ldif),
]

