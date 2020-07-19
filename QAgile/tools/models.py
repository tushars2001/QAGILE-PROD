from django.db import connection
from ..admin.models import dict_fetchall, isfloat
import re
import datetime
from validate_email import validate_email
from django.db import connection, transaction, DatabaseError, IntegrityError
import random, string
# Create your models here.


def get_ffdata(name):
    where = 'where 1=1'
    if not name:
        name = ''
    if name != '%':
        where = where + " and name = '" + name + "'"

    sql = "select name, description, file_type, is_header from tools.definition " + where

    with connection.cursor() as cursor:
        cursor.execute(sql)
        data = dict_fetchall(cursor)
        cursor.close()

    return data


def get_ffdetails(name):

    sql = """
            SELECT `structure`.`record_id`,
    `structure`.`definition_name`,
    `structure`.`order`,
    `structure`.`col_name`,
    `structure`.`col_data_type`,
    `structure`.`required`,
    `structure`.`max_len`,
    `structure`.`is_fixed_len`,
    `structure`.`format`,
    `structure`.`min_value`,
    `structure`.`max_value`,
    `structure`.`decimals`,
    `structure`.`created_dt`,
    `structure`.`all_null`,
    `structure`.`is_pk`
FROM `tools`.`structure`
where definition_name = '"""+name+"""' order by `order`
    """

    with connection.cursor() as cursor:
        cursor.execute(sql)
        data = dict_fetchall(cursor)
        cursor.close()

    return data


def test_dataType(value, dataType, decimal_points, dt_format):
    ret = {'value': value.strip(), 'test': 'dataType', 'expected': dataType, 'decimal_points': decimal_points,
           'dt_format': dt_format, 'result': ''}

    if len(value.strip()) == 0:
        ret['result'] = True
        return ret

    if dataType == 'INT':
        ret['result'] = str.isdigit(re.sub("^[-+]", "", str(value.strip())))

    if dataType == 'DATE':
        ret['result'] = is_date(value, dt_format)

    if dataType == 'DECIMAL':
        ret['result'] = is_decimal(value.strip())
        if ret['result'] and decimal_points > 0:
            ret['result'] = check_decimal_points(value.strip(), decimal_points)

    return ret


def is_date(dt, dt_format):
    ret = True
    try:
        datetime.datetime.strptime(str(dt), dt_format)
    except ValueError:
        ret = False

    return ret


def is_decimal(value):
    ret = True
    try:
        ret = float(value)
    except ValueError:
        ret = False

    return ret


def check_decimal_points(value, decimal_points):
    ret = False

    if len(str(value).split(".")) == 1:
        ret = True

    if len(str(value).split(".")) == 2:
        if len(str(value).split(".")[1]) <= decimal_points:
            ret = True

    return ret


def test_required(value):
    ret = {'result': True }

    if len(value.strip()) == 0:
        ret['result'] = False

    return ret


def test_pk(df_col):
    ret = {'result': True, 'size': 0}
    size = df_col[df_col.duplicated()].size

    if size > 0:
        ret['result'] = False
        ret['size'] = size
    return ret


def test_all_null(df_col):
    ret = {'result': True, 'size': 0}
    size = df_col[df_col.duplicated()].size

    if size > 0:
        ret['result'] = False
        ret['size'] = size
    return ret


def test_email(value):
    ret = {'result': validate_email(str(value))}

    return ret


def test_range(value, minv, maxv):

    ret = {'result': True, 'message': ''}

    if str(value).strip() == '':
        ret = {'result': False, 'message': ' Range Check failed for blank value'}
        return ret

    if is_decimal(str(value).strip()):
        value = float(str(value).strip())
    else:
        value = int(str(value).strip())

    if minv and is_decimal(str(minv).strip()):
        minv = float(str(minv).strip())
    else:
        minv = int(str(minv).strip())

    if maxv and is_decimal(str(maxv).strip()):
        maxv = float(str(maxv).strip())
    else:
        maxv = int(str(maxv).strip())

    if minv and value < minv:
        ret['result'] = False
        ret['message'] = 'Less than ' + str(minv)

    if maxv and value > maxv:
        ret['result'] = False
        ret['message'] = ' Greater than ' + str(maxv)

    return ret


def set_structure_field(record_id, field, val):
    updated = {'successfully': True, 'message': 'Record Updated.'}

    fields = {
        'record_id': record_id,
        'field': field,
        'val': val
    }

    sql = """
    UPDATE `tools`.`structure` 
    SET `""" + str(fields['field']).replace('field_', '') + """` = '""" + str(fields['val']) + """'
    WHERE `record_id` = '""" + str(fields['record_id']) + """'"""

    print(sql, fields)

    try:
        with transaction.atomic():
            with connection.cursor() as cursor:
                cursor.execute(sql, fields)
                cursor.close()

    except IntegrityError as e:
        updated['successfully'] = False
        updated['message'] = str(e).split(",")[1].replace("'", "")

    except DatabaseError as e:
        updated['successfully'] = False
        updated['message'] = str(e).split(",")[1].replace("'", "")

    return updated


def set_ff_field(name, field, val):
    updated = {'successfully': True, 'message': 'Record Updated.'}

    fields = {
        'name': name,
        'field': field,
        'val': val
    }

    sql = """
    UPDATE `tools`.`definition` 
    SET `""" + str(fields['field']).replace('field_', '') + """` = '""" + str(fields['val']) + """'
    WHERE `name` = '""" + str(fields['name']) + """'"""

    print(sql, fields)

    try:
        with transaction.atomic():
            with connection.cursor() as cursor:
                cursor.execute(sql, fields)
                cursor.close()

    except IntegrityError as e:
        updated['successfully'] = False
        updated['message'] = str(e).split(",")[1].replace("'", "")

    except DatabaseError as e:
        updated['successfully'] = False
        updated['message'] = str(e).split(",")[1].replace("'", "")

    return updated


def check_name(name):
    fields = {
        'name': name.strip()
    }
    sql = "select count(*) as found from tools.definition where trim(name) " \
          "= %(name)s "

    with connection.cursor() as cursor:
        cursor.execute(sql, fields)
        data = dict_fetchall(cursor)
        cursor.close()

    return bool(data[0]['found'])


def add_row(name, col_name, keys):
    updated = {'successfully': True, 'message': ''}
    fields = {'name': name, 'col_name': col_name, 'keys': keys}

    if len(fields['keys']):
        # add by keys
            sql = """insert into tools.structure (definition_name, col_name,col_data_type,required,max_len,is_fixed_len,
            format,min_value,max_value,decimals,all_null,is_pk)
            SELECT '""" + fields['name'] + """' as definition_name, col_name,
            col_data_type,required,max_len,is_fixed_len, format,min_value,max_value, decimals,all_null,is_pk 
            FROM tools.tools_v_suggestions where keyval in (""" + fields['keys'] + """) """
    else:
        #add by col_name
        sql = """
            insert into `tools`.`structure` (definition_name, col_name) values (
                %(name)s, %(col_name)s
            ) """

    print(sql, fields)

    try:
        with transaction.atomic():
            with connection.cursor() as cursor:
                cursor.execute(sql, fields)
                cursor.close()

    except IntegrityError as e:
        updated['successfully'] = False
        updated['message'] = str(e).split(",")[1].replace("'", "")

    except DatabaseError as e:
        updated['successfully'] = False
        updated['message'] = str(e).split(",")[1].replace("'", "")

    return updated


def create(fields):
    updated = {'successfully': True, 'message': ''}
    sql = """
        insert into `tools`.`definition` (name, description, file_type, is_header) values (
            %(name)s, %(description)s, %(file_type)s, %(is_header)s
        ) """

    print(sql, fields)

    try:
        with transaction.atomic():
            with connection.cursor() as cursor:
                cursor.execute(sql, fields)
                cursor.close()

    except IntegrityError as e:
        updated['successfully'] = False
        updated['message'] = str(e).split(",")[1].replace("'", "")

    except DatabaseError as e:
        updated['successfully'] = False
        updated['message'] = str(e).split(",")[1].replace("'", "")

    return updated


def create_copy(name):

    new_name = name + "_" + get_random_string(4)
    updated = {'successfully': True, 'message': '', 'name': new_name}

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
                cursor.execute(sql_definition, updated)
                cursor.execute(sql_structure, updated)
                cursor.close()

    except IntegrityError as e:
        updated['successfully'] = False
        updated['message'] = str(e).split(",")[1].replace("'", "")

    except DatabaseError as e:
        updated['successfully'] = False
        updated['message'] = str(e).split(",")[1].replace("'", "")

    return updated


def get_random_string(length):
    # Random string with the combination of lower and upper case
    letters = string.ascii_letters
    result_str = ''.join(random.choice(letters) for i in range(length))
    return result_str


def col_suggestions(col_name):
    html = """
        <table id="suggestions_table" class="display" >
        <thead>
        <tr>
            <th></th>
            <th>Column</th>
            <th>Data Type</th>
            <th>Max Len</th>
            <th>Key</th>
            <th>Required</th>
            <th>Is Fixed Len</th>
            <th>Min Value</th>
            <th>Max Value</th>
            <th>Decimals</th>
            <th>Format</th>
            <th>All Blanks</th>
        </tr>
        </thead>
        <tbody>"""

    sql = """
        SELECT keyval, col_name, col_data_type, required, max_len, is_fixed_len, format, min_value, max_value, decimals, all_null, is_pk
        FROM tools.tools_v_suggestions
        where col_name like '""" + col_name + """%'
        group by keyval, col_name, col_data_type, required, max_len, is_fixed_len, format, min_value, max_value, decimals, all_null, is_pk
    """

    with connection.cursor() as cursor:
        cursor.execute(sql)
        data = dict_fetchall(cursor)
        cursor.close()

    rows = ''

    for row in range(len(data)):
        rows = rows + """<tr>
                <td>
                    <input type = 'checkbox' name='selected' value='""" + str(data[row]['keyval']) + """'>
                </td>
                <td id="col_name">
                    """ + str(data[row]['col_name']) + """
                </td>
                <td id="col_data_type">
                    """ + str(data[row]['col_data_type']) + """
                </td>
                <td id="max_len">
                    """ + str(data[row]['max_len']) + """
                </td>
                <td id="is_pk">
                   """ + str(data[row]['is_pk']) + """
                </td>
                <td id="required">
                    """ + str(data[row]['required']) + """
                </td>
                <td id="is_fixed_len">
                    """ + str(data[row]['is_fixed_len']) + """
                </td>
                <td id="min_value">
                    """ + str(data[row]['min_value']) + """
                </td>
                <td id="max_value">
                    """ + str(data[row]['max_value']) + """
                </td>
                <td id="decimals">
                    """ + str(data[row]['decimals']) + """
                </td>
                <td id="format">
                    """ + str(data[row]['format']) + """
                </td>
                <td id="all_null">
                    """ + str(data[row]['all_null']) + """
                </td>
            </tr>"""

    html = html + rows + """</tbody></table>"""

    return html
