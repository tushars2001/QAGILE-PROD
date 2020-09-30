from django.urls import path
from . import views
from ..identity import views as identity

urlpatterns = [
    path('', views.home),
    path('file/', views.file),
    path('read/', views.read),
    path('create-account/', identity.create_account),
    path('create-account/check_account_name/', views.check_account_name),
    path('login-account/', identity.login_account),
    path('view-account/', views.view_account),
    path('view-definition/', views.view_definition),
    path('update-definition/', views.update_definition),
    path('view-structure/', views.view_structure),
    path('create-structure/', views.create_structure),
    path('update-structure/', views.update_structure),
    path('create-structure/add-row/', views.add_row),
    path('create-definition/', views.create_definition),
    path('view-results/', views.view_result),
    path('logout/', identity.logout_view),
    path('reset-password/', identity.reset_password),
    path('about/', views.about),
    path('contact/', views.contact),
    path('run-test/', views.run_test),
    path('start-execution/', views.start_execution),
    path('update-email/', identity.update_email),
    path('formats/', views.formats),
    path('add-row/', views.add_row),
    path('col-suggestions/', views.col_suggestions),
    path('help/', views.help),
    path('create-copy/', views.create_copy),
]

