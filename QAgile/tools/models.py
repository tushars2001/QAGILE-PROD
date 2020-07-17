from django.db import connection
from ..admin.models import dict_fetchall, isfloat
import re
import datetime
from validate_email import validate_email
from django.db import connection, transaction, DatabaseError, IntegrityError
# Create your models here.


def get_ffdata(name):
    where = 'where 1=1'
    if not name:
        name = ''
    if name != '%':
        where = where + " and name = '" + name + "'"

    sql = "select name, description, file_type from tools.definition " + where

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
    SET """ + str(fields['field']).replace('field_', '') + """ = '""" + str(fields['val']) + """'
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
