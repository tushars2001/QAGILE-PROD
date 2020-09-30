from ..identity import views as identity
from django.db import connection, transaction, DatabaseError, IntegrityError
from django.contrib.auth.models import User


response = {"data": {}, 'status': 200}


def GET(name):
    sql = """select username as name, email, concat(first_name, " ", last_name) as requester_name, '' as phone 
            from qagile.auth_user where username = %(name)s"""

    with connection.cursor() as cursor:
        cursor.execute(sql, {'name': name})
        data = identity.dict_fetchall(cursor)
        cursor.close()

    if len(data):
        response = {"data": {'account_details': data[0]}, 'status': 200}
    else:
        response = {"data": {}, 'status': 204}

    return response


def POST(params):
    status = 201
    data = params
    sql = """insert into tools.accounts (name, email, requester_name, phone, password) values(
        %(name)s, %(email)s, %(requester_name)s, %(phone)s, %(password)s
    )
    """

    try:
        with transaction.atomic():
            with connection.cursor() as cursor:
                cursor.execute(sql, params)
                cursor.close()
            user = User.objects.create_user(params['name'], params['email'], params['password'])

    except IntegrityError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-DUP-ACCOUNT'}
        status = 500

    except DatabaseError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-ACCOUNT'}
        status = 500

    response = {"data": data, 'status': status}

    return response


def PUT(params):
    status = 200
    data = params
    sql = """update tools.accounts SET email= %(email)s, requester_name = %(requester_name)s, phone = %(phone)s
           where name = %(name)s
        """

    try:
        with transaction.atomic():
            with connection.cursor() as cursor:
                cursor.execute(sql, params)
                cursor.close()

        data = GET(params['name'])['data']

    except IntegrityError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-DUP-ACCOUNT'}
        status = 500

    except DatabaseError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-ACCOUNT'}
        status = 500

    response = {"data": data, 'status': status}

    return response


def DELETE(name):
    status = 200
    sql = """delete from tools.accounts where name = %(name)s """

    try:
        with transaction.atomic():
            with connection.cursor() as cursor:
                cursor.execute(sql, {'name': name})
                cursor.close()
        data = {'account': name, 'status': 'Deleted'}

    except IntegrityError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-DUP-ACCOUNT'}
        status = 500

    except DatabaseError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-ACCOUNT'}
        status = 500

    response = {"data": data, 'status': status}

    return response


def GET_KEYS(name):
    sql = """select name, apikey, active from tools.account_keys where name = %(name)s"""

    with connection.cursor() as cursor:
        cursor.execute(sql, {'name': name})
        data = identity.dict_fetchall(cursor)
        cursor.close()

    if len(data):
        response = {"data": {'account_keys_details': data}, 'status': 200}
    else:
        response = {"data": {}, 'status': 204}

    return response


def DELETE_KEYS(name):
    status = 200
    sql = """delete from tools.account_keys where name = %(name)s """

    try:
        with transaction.atomic():
            with connection.cursor() as cursor:
                cursor.execute(sql, {'name': name})
                cursor.close()
        data = {'account': name, 'status': 'Keys Deleted'}

    except IntegrityError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-DUP-ACCOUNT-KEYS'}
        status = 500

    except DatabaseError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-ACCOUNT-KEYS'}
        status = 500

    response = {"data": data, 'status': status}

    return response


def POST_KEY(name):
    status = 201
    data = {'name': name, 'key': "12121212134343343434"}

    sql = """insert into tools.account_keys (name, apikey, active) values(
            %(name)s, %(key)s, 1
        )
        """

    try:
        with transaction.atomic():
            with connection.cursor() as cursor:
                cursor.execute(sql, data)
                cursor.close()

    except IntegrityError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-DUP-ACCOUNT-KEY'}
        status = 500

    except DatabaseError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-ACCOUNT-KEY'}
        status = 500

    response = {"data": data, 'status': status}

    return response


def PUT_KEY(body, name):
    status = 200
    body['name'] = name
    data = body
    sql = """update tools.account_keys SET active = %(active)s
               where name = %(name)s and apikey = %(apikey)s
            """

    try:
        with transaction.atomic():
            with connection.cursor() as cursor:
                cursor.execute(sql, data)
                cursor.close()

    except IntegrityError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-DUP-ACCOUNT-KEY'}
        status = 500

    except DatabaseError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-ACCOUNT-KEY'}
        status = 500

    response = {"data": data, 'status': status}

    return response


def DELETE_KEY(body, name):
    PUT_KEY({'active': 0, 'apikey': body['apikey']}, name)

    return response
