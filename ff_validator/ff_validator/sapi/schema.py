from django.db import connection, transaction, DatabaseError, IntegrityError
response = {"data": {}, 'status': 200}


def POST(name):
    status = 201
    data = {'name': name}

    sql = "CREATE SCHEMA " + name

    try:
        with transaction.atomic():
            with connection.cursor() as cursor:
                cursor.execute(sql)
                cursor.close()

    except IntegrityError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-DUP-SCHEMA'}
        status = 500

    except DatabaseError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-SCHEMA'}
        status = 500

    response = {"data": data, 'status': status}

    return response


def DELETE(name):
    status = 200
    sql = "DROP DATABASE " + name

    try:
        with transaction.atomic():
            with connection.cursor() as cursor:
                cursor.execute(sql)
                cursor.close()
        data = {'SCHEMA': name, 'status': 'Deleted'}

    except IntegrityError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-DUP-SCHEMA'}
        status = 500

    except DatabaseError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-SCHEMA'}
        status = 500

    response = {"data": data, 'status': status}

    return response
