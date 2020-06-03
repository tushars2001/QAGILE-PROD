from . import views
from django.urls import path
from django.conf.urls import url

urlpatterns = [

    path('', views.login_page),
    path('check/', views.check_login),
    path('logout/', views.logout_user),
    path('sqlcheck/', views.check_sql),
    path('profile/', views.profile),

]
