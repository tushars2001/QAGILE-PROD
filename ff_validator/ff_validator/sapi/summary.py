from ..identity import views as identity
from django.db import connection, transaction, DatabaseError, IntegrityError


response = {"data": {}, 'status': 200}


def GET(filters):
    where = "where 1=1 "

    if 'runid' in filters:
        where = where + " and `runid` = %(runid)s "

    if 'definition_name' in filters:
        where = where + " and `definition_name` = %(definition_name)s "

    if 'account_name' in filters:
        where = where + " and `account_name` = %(account_name)s "

    sql = "select definition_name, `runid`, `summary`, `created` from tools.test_summary " + where

    with connection.cursor() as cursor:
        cursor.execute(sql, filters)
        data = identity.dict_fetchall(cursor)
        cursor.close()

    if len(data):
        response = {"data": {'test_summary_details': data}, 'status': 200}
    else:
        response = {"data": {}, 'status': 204}

    return response


def POST(params):
    status = 201
    data = params
    sql = """insert into tools.test_summary (`definition_name`, `runid`, `summary`, `account_name`) values(
        %(definition_name)s, %(runid)s, %(summary)s, %(account_name)s
    )
    """

    try:
        with transaction.atomic():
            with connection.cursor() as cursor:
                cursor.execute(sql, params)
                cursor.close()

    except IntegrityError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-DUP-SUMMARY-POST'}
        status = 500

    except DatabaseError as e:
        print(str(e))
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-SUMMARY-POST'}
        status = 500

    response = {"data": data, 'status': status}

    return response
