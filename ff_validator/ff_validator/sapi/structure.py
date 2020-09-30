from ..identity import views as identity
from django.db import connection, transaction, DatabaseError, IntegrityError


response = {"data": {}, 'status': 200}


def GET(definition_name, account_name):
    sql = """select 
        `record_id`,
        `definition_name`,
        `order`,
        `col_name`,
        `col_data_type`,
        `required`,
        `max_len`,
        `is_fixed_len`,
        `format`,
        `min_value`,
        `max_value`,
        `decimals`,
        `all_null`,
        `is_pk`
    from tools.structure 
    where definition_name = %(definition_name)s and account_name = %(account_name)s order by `order`"""

    with connection.cursor() as cursor:
        cursor.execute(sql, {'definition_name': definition_name, 'account_name': account_name})
        data = identity.dict_fetchall(cursor)
        cursor.close()

    if len(data):
        response = {"data": {'structure_details': data}, 'status': 200}
    else:
        response = {"data": {}, 'status': 204}

    return response


def GET_COLUMN(col_name, definition_name, account_name, params=None):
    record_id = ''
    cond = ''
    if params and 'record_id' in params:
        cond = " and record_id = %(record_id)s "
        record_id = params['record_id']

    if col_name:
        cond = " and col_name = %(col_name)s "

    sql = """select 
        `record_id`,
        `definition_name`,
        `order`,
        `col_name`,
        `col_data_type`,
        ifnull(`required`,0) as required,
        `max_len`,
        ifnull(`is_fixed_len`,0) as is_fixed_len,
        `format`,
        `min_value`,
        `max_value`,
        `decimals`,
        ifnull(`all_null`,0) as all_null,
        ifnull(`is_pk`, 0) as is_pk
    from tools.structure 
    where definition_name = %(definition_name)s 
    and account_name = %(account_name)s""" + cond

    with connection.cursor() as cursor:
        cursor.execute(sql, {'col_name': col_name, 'definition_name': definition_name,
                             'account_name': account_name, 'record_id': record_id})
        data = identity.dict_fetchall(cursor)
        cursor.close()

    if len(data):
        response = {"data": {'column_details': data}, 'status': 200}
    else:
        response = {"data": {}, 'status': 204}

    return response


def POST_COLUMN(params, definition_name):
    status = 201
    params['definition_name'] = definition_name
    data = params

    for param in params:
        if not len(params[param]):
            params[param] = None

    if 'keys' in params and params['keys']:
        sql = """insert into tools.structure (definition_name, col_name,col_data_type,required,max_len,is_fixed_len,
                    format,min_value,max_value,decimals,all_null,is_pk, account_name)
                    SELECT '""" + params['name'] + """' as definition_name, col_name, col_data_type,required,max_len,
                    is_fixed_len, format,min_value,max_value, decimals,all_null,is_pk, account_name FROM 
                    tools.tools_v_suggestions where keyval in (""" + params['keys'] + """)
                     and account_name = %(account_name)s
                     """

    else:
        sql = """insert into tools.structure (definition_name, `order`, col_name,col_data_type,required,max_len,is_fixed_len,
                format,min_value,max_value,decimals,all_null,is_pk, account_name)
                values(
                    %(definition_name)s, %(order)s, %(col_name)s, %(col_data_type)s, %(required)s, %(max_len)s, 
                    %(is_fixed_len)s, %(format)s, %(min_value)s, %(max_value)s, %(decimals)s, %(all_null)s, %(is_pk)s,
                    %(account_name)s
                )
                     """

    try:
        with transaction.atomic():
            with connection.cursor() as cursor:
                cursor.execute(sql, params)
                cursor.close()

    except IntegrityError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-DUP-STRUCTURE'}
        status = 500

    except DatabaseError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-STRUCTURE'}
        status = 500

    response = {"data": data, 'status': status}

    return response


def PUT_COLUMN(params, definition_name):
    status = 200
    data = params
    data['definition_name'] = definition_name
    sql = """update  tools.structure SET 
            `order` = %(order)s,
            col_name = %(new_col_name)s,
            col_data_type = %(col_data_type)s,
            required = %(required)s,
            max_len = %(max_len)s,
            is_fixed_len = %(is_fixed_len)s,
            format = %(format)s,
            min_value = %(min_value)s,
            max_value = %(max_value)s,
            decimals = %(decimals)s,
            all_null = %(all_null)s,
            is_pk = %(is_pk)s
            where definition_name = %(definition_name)s and col_name = %(col_name)s and account_name = %(account_name)s
                     """

    try:
        with transaction.atomic():
            with connection.cursor() as cursor:
                cursor.execute(sql, params)
                cursor.close()

        data = GET_COLUMN(data['new_col_name'], definition_name, data['account_name'])

    except IntegrityError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-DUP-STRUCTURE'}
        status = 500

    except DatabaseError as e:
        print(str(e))
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-STRUCTURE'}
        status = 500

    response = {"data": data, 'status': status}

    return response


def DELETE(definition_name, account_name):
    status = 200
    sql = """delete from tools.structure where definition_name = %(definition_name)s 
    and account_name = %(account_name)s"""

    try:
        with transaction.atomic():
            with connection.cursor() as cursor:
                cursor.execute(sql, {'definition_name': definition_name, 'account_name': account_name})
                cursor.close()
        data = {'STRUCTURE': definition_name, 'status': 'Deleted'}

    except IntegrityError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-DUP-STRUCTURE'}
        status = 500

    except DatabaseError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-STRUCTURE'}
        status = 500

    response = {"data": data, 'status': status}

    return response


def DELETE_COLUMN(col_name, definition_name, account_name):
    status = 200
    sql = """delete from tools.structure where definition_name = %(definition_name)s 
        and col_name = %(col_name)s and account_name = %(account_name)s
     """

    try:
        with transaction.atomic():
            with connection.cursor() as cursor:
                cursor.execute(sql, {'definition_name': definition_name, 'col_name': col_name,
                                     'account_name': account_name})
                cursor.close()
        data = {'STRUCTURE': definition_name, 'status': 'Deleted'}

    except IntegrityError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-DUP-STRUCTURE-COLUMN'}
        status = 500

    except DatabaseError as e:
        data = {'error': str(e).split(",")[1].replace("'", ""), 'code': 'DB-STRUCTURE-COLUMN'}
        status = 500

    response = {"data": data, 'status': status}

    return response

