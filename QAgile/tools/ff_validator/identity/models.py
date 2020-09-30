import random
import string
from django.db import connection
from django.http import HttpResponse
from django.contrib.auth.models import User


def auth(request):
    if 'account-id' in request.headers and 'account-secret' in request.headers:
        return check_auth(request.headers['account-id'], request.headers['account-secret'])
    else:
        return False


def check_auth(id, password):
    sql = """select count(*) as found from tools.account_keys ak 
        where ak.name = %(id)s and ak.apikey = %(password)s and ak.active = 1"""
    with connection.cursor() as cursor:
        cursor.execute(sql, {'id': id, 'password': password})
        data = dict_fetchall(cursor)
        cursor.close()

    return data[0]['found']


def auth_response(request):
    # this function is to say you are forbidden if do not pass identity auth test
    return HttpResponse("", status=403)


def dict_fetchall(cursor):
    columns = [col[0] for col in cursor.description]
    return [
        dict(zip(columns, row))
        for row in cursor.fetchall()
    ]


def get_random_string(length):
    # Random string with the combination of lower and upper case
    letters = string.ascii_letters
    result_str = ''.join(random.choice(letters) for i in range(length))
    return result_str


def reset_password(account_name, new_password):
    try:
        u = User.objects.get(username=account_name)
        u.set_password(new_password)
        u.save()
        return True
    except:
        return False


def send_link_email(account_info, code):
    
    return True


def update_profile(params, username):
    try:
        u = User.objects.get(username=username)
        if 'first_name' in params:
            u.first_name = params['first_name']

        if 'last_name' in params:
            u.last_name = params['last_name']

        if 'email' in params:
            u.email = params['email']

        u.save()
        return True
    except:
        return False
