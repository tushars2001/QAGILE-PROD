from . import views
from django.urls import path, re_path
from django.conf.urls import url

urlpatterns = [

    path('', views.analytics_home),
    path('load_tenrox', views.load_tenrox),
    path('planned-vs-actuals', views.planned_actuals),
]
