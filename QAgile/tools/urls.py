from . import views
from django.urls import path
from django.conf.urls import url

urlpatterns = [

    path('', views.tools_home),
    path('fit-and-format/', views.fit_format),
    path('fit-and-format/structure/', views.structure),
    path('fit-and-format/run-test/', views.run_test),
    path('fit-and-format/run-test/run/', views.run),
    path('fit-and-format/structure/post/', views.post_data),
    path('fit-and-format/create-new-definition/', views.create_definition),
    path('fit-and-format/create-new-definition/check_name/', views.check_name),
    path('fit-and-format/create-new-definition/create/', views.create),
]
