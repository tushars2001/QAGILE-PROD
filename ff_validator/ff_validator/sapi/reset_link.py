from ..identity.models import dict_fetchall
from django.db import connection, transaction, DatabaseError, IntegrityError


response = {"data": {}, 'status': 200}


def GET(params):
    where = "where 1=1 "

    if 'code' in params:
        where = where + " and code = %(code)s "

    if 'account_name' in params:
        where = where + " and account_name = %(account_name)s "

    if 'active' in params:
        where = where + " and active = %(active)s "

    if 'in_hour' in params:
        where = where + " and created_date >= DATE_SUB(NOW(), INTERVAL %(in_hour)s HOUR) "

    sql = """select code, email, account_name, `active`, created_date from tools.reset_links """ + where \
          + """ order by created_date desc"""

    with connection.cursor() as cursor:
        cursor.execute(sql, params)
        data = dict_fetchall(cursor)
        cursor.close()

    if len(data):
        response = {"data": {'link_details': data}, 'status': 200}
    else:
        response = {"data": {}, 'status': 204}

    return response


def POST(params):
    status = 201
    data = params
    sql = """insert into tools.reset_links (code, email, account_name) values(
        %(code)s, %(email)s, %(account_name)s
    )
    """

    try:
        with transaction.atomic():
            with connection.cursor() as cursor:
                cursor.execute(sql, params)
                cursor.close()

    except IntegrityError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-DUP-RESET-LINK'}
        status = 500

    except DatabaseError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-RESET-LINK'}
        status = 500

    response = {"data": data, 'status': status}

    return response


def PUT(params):
    status = 200
    data = params
    sql = """update tools.reset_links set `active` = %(active)s 
    where code = %(code)s and account_name = %(account_name)s"""

    try:
        with transaction.atomic():
            with connection.cursor() as cursor:
                cursor.execute(sql, params)
                cursor.close()

        data = GET(params)['data']

    except IntegrityError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-DUP-DEFINITION-PUT'}
        status = 500

    except DatabaseError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-DEFINITION-PUT'}
        status = 500

    response = {"data": data, 'status': status}

    return response


def DELETE(code, account_name):
    status = 200
    sql = """update tools.reset_links set `active` = 0 where code = %(code)s and account_name = %(account_name)s"""

    try:
        with transaction.atomic():
            with connection.cursor() as cursor:
                cursor.execute(sql, {'code': code, 'account_name': account_name})
                cursor.close()
        data = {'code': code, 'status': 'Deleted'}

    except IntegrityError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-DUP-RESET-LINK-DELETE'}
        status = 500

    except DatabaseError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-DEFINITION-LINK-DELETE'}
        status = 500

    response = {"data": data, 'status': status}

    return response
