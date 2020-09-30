from . import views
from django.urls import path, include
from django.conf.urls import url
from .ff_validator.ui import views as ui

urlpatterns = [

    path('', views.tools_home),
    path('fit-and-format-validator/', include('QAgile.tools.ff_validator.ui.urls')),
    # path('fit-and-format-validator/structure/', views.structure),
    # path('fit-and-format-validator/run-test/', views.run_test),
    # path('fit-and-format-validator/run-test/run/', views.run),
    # path('fit-and-format-validator/post/', views.post_ff_data),
    # path('fit-and-format-validator/structure/post/', views.post_data),
    # path('fit-and-format-validator/structure/add-row/', views.add_row),
    # path('fit-and-format-validator/structure/col_suggestions/', views.col_suggestions),
    # path('fit-and-format-validator/structure/formats/', views.formats),
    # path('fit-and-format-validator/create-new-definition/', views.create_definition),
    # path('fit-and-format-validator/create-new-definition/check_name/', views.check_name),
    # path('fit-and-format-validator/create-new-definition/create/', views.create),
    # path('fit-and-format-validator/create-copy/', views.create_copy),
]
