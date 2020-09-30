from django.urls import path, re_path
from . import views


urlpatterns = [
    path('account/', views.account),
    re_path(r'^account/\w+/keys/$', views.account_keys),
    re_path(r'^account/\w+/key/$', views.account_key),
    path('schema/', views.schema),
    path('definition/', views.definition),
    path('structure/', views.structure),
    re_path(r'^structure/\w+/column/$', views.structure_column),
    path('suggestions/', views.suggestions),
    path('file/', views.file),
    path('process/', views.process),
    path('metadata/', views.metadata),
    path('summary/', views.summary),
    path('reset_link/', views.reset_link),
]

