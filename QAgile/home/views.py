from django.shortcuts import render
from django.contrib.auth.decorators import login_required
from . import models
from django.shortcuts import redirect


def homepage_view(request):
    # assert False, request
    messages_data = models.get_messages()
    return render(request, "homepage.html", {'messages_data': messages_data[0]})


def contact(request):
    if request.POST.get('sendmail'):
        print("this")
    return render(request, "contact.html")


def about(request):
    return render(request, "about.html")


@login_required(login_url='/identity/')
def messages(request):
    messages_data = models.get_messages()

    if request.method == "POST":
        messages_data = models.set_messages(request.POST.get('bruce'), request.POST.get('sreeman'))
        return redirect("/")

    if not messages_data:
        messages_data = [{'bruce': '', 'sreeman': ''}]
    return render(request, "messages.html", {'messages_data': messages_data[0]})


