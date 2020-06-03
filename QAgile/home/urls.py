from django.urls import path
from .views import homepage_view, contact, about, messages

urlpatterns = [
    path('', homepage_view),
    path('contact/', contact),
    path('about/', about),
    path('messages/', messages),
]