from . import views
from django.urls import path, re_path
from django.conf.urls import url

urlpatterns = [

    path('', views.rfs_home),
    path('request-for-service/', views.rfs),
    path('request-for-service/estimates', views.estimates),
    path('request-for-service/resource-loading', views.resource_loading),
    path('request-for-service/change-status', views.change_status),
    url(r'^export/xls/$', views.export_users_xls, name='export_users_xls'),
    # re_path(r'request-for-service/[-@\w/]{0,50}approved/\d+', views.view_rfs),
    path('request-for-service/approved', views.rfs_approved),
    path('request-for-service/estimates/approved', views.estimates_approved),
    path('request-for-service/resource-loading/approved', views.resource_loading_approved),
    url(r'^approved-export/xls/$', views.export_users_xls_approved, name='export_users_xls_approved'),

]
