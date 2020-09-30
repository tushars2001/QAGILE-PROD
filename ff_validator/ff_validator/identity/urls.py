from django.urls import path
from . import models

urlpatterns = [
    path('', models.auth),
    path('account/login/', models.auth_response),
]

