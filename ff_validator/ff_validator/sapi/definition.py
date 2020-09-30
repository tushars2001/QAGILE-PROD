from ..identity.models import dict_fetchall
from django.db import connection, transaction, DatabaseError, IntegrityError
import random
import string

response = {"data": {}, 'status': 200}


def GET(params):
    where = "where account_name = %(account_name)s "

    if 'name' in params:
        where = where + " and name = %(name)s "

    sql = """select name, description, file_type, is_header, account_name from tools.definition """ + where

    with connection.cursor() as cursor:
        cursor.execute(sql, params)
        data = dict_fetchall(cursor)
        cursor.close()

    if len(data):
        response = {"data": {'definition_details': data}, 'status': 200}
    else:
        response = {"data": {}, 'status': 204}

    return response


def POST(params):
    status = 201
    data = params
    sql = """insert into tools.definition (name, description, file_type, is_header, account_name) values(
        %(name)s, %(description)s, %(file_type)s, %(is_header)s, %(account_name)s
    )
    """

    try:
        with transaction.atomic():
            with connection.cursor() as cursor:
                cursor.execute(sql, params)
                cursor.close()

    except IntegrityError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-DUP-DEFINITION'}
        status = 500

    except DatabaseError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-DEFINITION'}
        status = 500

    response = {"data": data, 'status': status}

    return response


def PUT(params):
    status = 200
    data = params
    sql = """update tools.definition SET description= %(description)s, file_type = %(file_type)s, 
        is_header = %(is_header)s where name = %(name)s and account_name = %(account_name)s
        """

    try:
        with transaction.atomic():
            with connection.cursor() as cursor:
                cursor.execute(sql, params)
                cursor.close()

        data = GET(params)['data']

    except IntegrityError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-DUP-DEFINITION'}
        status = 500

    except DatabaseError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-DEFINITION'}
        status = 500

    response = {"data": data, 'status': status}

    return response


def DELETE(name, account_name):
    status = 200
    sql = """delete from tools.definition where name = %(name)s and account_name = %(account_name)s"""

    try:
        with transaction.atomic():
            with connection.cursor() as cursor:
                cursor.execute(sql, {'name': name, 'account_name': account_name})
                cursor.close()
        data = {'definition': name, 'status': 'Deleted'}

    except IntegrityError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-DUP-DEFINITION'}
        status = 500

    except DatabaseError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-DEFINITION'}
        status = 500

    response = {"data": data, 'status': status}

    return response


def create_copy(account_name, name):
    status = 201

    new_name = name + "_" + get_random_string(4)

    sql_definition = """
            insert into `tools`.`definition` (name, description, file_type, is_header) 
            SELECT '""" + new_name + """' as name, description, file_type, is_header FROM tools.definition 
            where name='""" + name + """'
            """

    sql_structure = """
                insert into `tools`.`structure` (definition_name, `order`, col_name, col_data_type, required, 
                max_len, is_fixed_len, format, min_value, max_value, decimals, all_null, is_pk) 
                SELECT '""" + new_name + """' as definition_name, `order`, col_name, col_data_type, required, 
                max_len, is_fixed_len, format, min_value, max_value, decimals, all_null, is_pk FROM tools.structure 
                where definition_name='""" + name + """'
                """

    print(sql_structure, sql_definition)

    try:
        with transaction.atomic():
            with connection.cursor() as cursor:
                cursor.execute(sql_definition)
                cursor.execute(sql_structure)
                cursor.close()

            data = {"new_definition": new_name}

    except IntegrityError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-DUP-CREATE-COPY'}
        status = 500

    except DatabaseError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-CREATE-COPY'}
        status = 500

    response = {"data": data, 'status': status}

    return response


def get_random_string(length):
    # Random string with the combination of lower and upper case
    letters = string.ascii_letters
    result_str = ''.join(random.choice(letters) for i in range(length))
    return result_str
