from . import views
from django.urls import path
from django.conf.urls import url

urlpatterns = [

    path('', views.tools_home),
    path('fit-and-format/', views.fit_format),
    path('fit-and-format/structure/', views.structure),
    path('fit-and-format/run-test/', views.run_test),
    path('fit-and-format/run-test/run/', views.run),

]
