from ..identity import views as identity
from django.db import connection, transaction, DatabaseError, IntegrityError


response = {"data": {}, 'status': 200}


def GET(filters):
    where = "where 1=1 "

    if 'active' in filters:
        where = where + " and `active` = %(active)s "

    if 'type' in filters:
        where = where + " and `type` = %(type)s "

    if 'key' in filters:
        where = where + " and `key` = %(key)s "

    if 'value' in filters:
        where = where + " and `value` = %(value)s "

    sql = "select record_id, `type`, `key`, `value`, `active` from tools.metadata " + where

    with connection.cursor() as cursor:
        cursor.execute(sql, filters)
        data = identity.dict_fetchall(cursor)
        cursor.close()

    if len(data):
        response = {"data": {'metadata_details': data}, 'status': 200}
    else:
        response = {"data": {}, 'status': 204}

    return response


def POST(params):
    status = 201
    data = params
    sql = """insert into tools.metadata (`type`, `key`, `value`) values(
        %(type)s, %(key)s, %(value)s
    )
    """

    try:
        with transaction.atomic():
            with connection.cursor() as cursor:
                cursor.execute(sql, params)
                cursor.close()

    except IntegrityError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-DUP-METADATA'}
        status = 500

    except DatabaseError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-METADATA'}
        status = 500

    response = {"data": data, 'status': status}

    return response


def PUT(params):
    status = 200
    data = params
    sql = """update tools.metadata SET `type`= %(type)s, `key` = %(key)s, `value` = %(value)s, `active`=%(active)s
           where record_id = %(record_id)s
        """

    try:
        with transaction.atomic():
            with connection.cursor() as cursor:
                cursor.execute(sql, params)
                cursor.close()

        data = GET(params)

    except IntegrityError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-DUP-METADATA'}
        status = 500

    except DatabaseError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-METADATA'}
        status = 500

    response = {"data": data, 'status': status}

    return response


def DELETE(filters):
    status = 200

    where = "where 1=1 "

    if 'active' in filters:
        where = where + " and `active` = %(active)s "

    if 'type' in filters:
        where = where + " and `type` = %(type)s "

    if 'key' in filters:
        where = where + " and `key` = %(key)s "

    if 'value' in filters:
        where = where + " and `value` = %(value)s "

    sql = """update tools.metadata SET `active` = 0 """ + where

    try:
        with transaction.atomic():
            with connection.cursor() as cursor:
                cursor.execute(sql, filters)
                cursor.close()

        data = {'metadata': GET(filters), 'status': 'Metadata Deleted'}

    except IntegrityError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-DUP-METADATA-DELETE'}
        status = 500

    except DatabaseError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-METADATA-DELETE'}
        status = 500

    response = {"data": data, 'status': status}

    return response
