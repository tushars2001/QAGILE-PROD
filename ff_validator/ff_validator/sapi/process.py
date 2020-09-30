import datetime
import re
import pandas as pd
from validate_email import validate_email

from . import definition as df, structure

response = {"data": {}, 'status': 200}


def run(account_name, definition, input_file):
    line = []
    result = ''
    skip_rows = 0
    col_array = []
    col_length_array = []
    output = []

    summary = {
        'data_type_errors': 0,
        'required_errors': 0,
        'email_format_errors': 0,
        'pk_errors': [],
        'all_null_errors': [],
        'date_format_errors': 0,
        'rows_passed': 0,
        'range_errors': 0
    }

    # if not os.path.isfile(os.path.join(file_path, file_name)):
    #   return {"data": {"error": "File Not Found!"}, 'status': 200}
    get_for = {'account_name': account_name, 'name': definition}
    file_definition = df.GET(get_for)['data']['definition_details'][0]
    file_structure = structure.GET(definition, account_name)['data']['structure_details']
    if file_definition['is_header']:
        skip_rows = 1

    for idx in range(len(file_structure)):
        col_array.append(file_structure[idx]['col_name'])
        col_length_array.append(file_structure[idx]['max_len'])

    if file_definition['file_type'] == 'FIXED':
        # Using Pandas with a column specification
        # data = pd.read_csv(input_file,
        #                   skiprows=skip_rows, widths=col_length_array, header=None, sep='\n\t', dtype='object')
        data = pd.DataFrame()

        for ln in input_file:
            r = []
            start = 0
            end = 0
            for length in col_length_array:
                start = end
                end = start + length
                r.append(ln.decode('utf-8-sig')[start:end])
            data = data.append(pd.Series(r), ignore_index=True)

    if file_definition['file_type'] == 'CSV':
        data = pd.read_csv(input_file, skiprows=skip_rows, header=None, dtype='object', ).fillna('')

    if file_definition['file_type'] == 'PIPE':
        data = pd.read_csv(input_file, skiprows=skip_rows, header=None, dtype='object', sep='|').fillna('')

    if file_definition['file_type'] == 'TAB':
        data = pd.read_csv(input_file,
                           skiprows=skip_rows, header=None, dtype='object', sep='\t', lineterminator='\n').fillna('')

    rows = data.shape[0]
    cols = data.shape[1]
    if len(file_structure) != cols:
        return {"error": "Defined Structure and input file structure do not mactch. "
                         + "<br>Defined " + str(len(file_structure))
                         + " columns but Input File has " + str(cols) + " columns.",
                "definition": definition}

    if data.size > 20000:
        return {"error": "File size exceed with row * col, " + str(rows) + " * " + str(cols) + " = " + str(data.size)
                         + " Max allowed is row * col = 20000"
                }

    # duplicate key field test
    for col in range(cols):
        if file_structure[col]['is_pk'] == 1:
            ret = test_pk(data[col])
            if ret['result'] is False:
                summary['pk_errors'].append("Column " + file_structure[col][
                    'col_name'] + " has " + str(ret['size']) + " duplicates ")

    # all null in column check
    for col in range(cols):
        # need to check if all_null not allowed, but ignore if either required or pk is a requirement
        if file_structure[col]['all_null'] == 0 and file_structure[col]['required'] == 0 \
                and file_structure[col]['is_pk'] == 0:
            if data[(data[col].replace(' ', '', regex=True) != u'')].index.size == 0:
                summary['all_null_errors'].append("Column " + file_structure[col][
                    'col_name'] + " has all Null/Blanks")

    for row in range(rows):
        for col in range(cols):
            # line = line + data[col][row] + ","
            line.append(data[col][row])

            # data type test
            ret = test_dataType(data[col][row], file_structure[col]['col_data_type'],
                                file_structure[col]['decimals'], file_structure[col]['format'])
            if ret['result'] is False:
                summary['data_type_errors'] = summary['data_type_errors'] + 1
                result = result + "\nDataType For column " + file_structure[col]['col_name'] + " is expected to be " \
                         + ret["expected"]
                if ret["expected"] == 'DECIMAL':
                    result = result + " with " + str(ret["decimal_points"]) + " decimals points"
                if ret["expected"] == 'DATE':
                    summary['date_format_errors'] = summary['date_format_errors'] + 1
                    result = result + " with " + str(ret["dt_format"]) + " format"
            else:
                # range test test
                if file_structure[col]['col_data_type'] == 'INT' or file_structure[col]['col_data_type'] == 'DECIMAL':
                    if file_structure[col]['min_value'] or file_structure[col]['max_value']:
                        ret = test_range(data[col][row], file_structure[col]['min_value'],
                                         file_structure[col]['max_value'])
                        if ret['result'] is False:
                            summary['range_errors'] = summary['range_errors'] + 1
                            result = result + "\ncolumn " + file_structure[col]['col_name'] + "is not in range" + ret[
                                'message']

            # required field test
            if file_structure[col]['required'] == 1 or file_structure[col]['is_pk'] == 1:
                ret = test_required(data[col][row])
                if ret['result'] is False:
                    summary['required_errors'] = summary['required_errors'] + 1
                    if file_structure[col]['required'] == 1:
                        result = result + "\ncolumn " + file_structure[col]['col_name'] + "is required but value is " \
                                                                                          "missing "
                    if file_structure[col]['is_pk'] == 1:
                        result = result + "\ncolumn " + file_structure[col]['col_name'] + "is key but value is missing"

            # email field test
            if file_structure[col]['format'] == 'email':
                ret = test_email(data[col][row])
                if ret['result'] is False:
                    summary['email_format_errors'] = summary['email_format_errors'] + 1
                    result = result + "\ncolumn " + file_structure[col]['col_name'] + "is not a valid email address "

        if result != '':
            line.insert(0, "Failed : " + result)
        else:
            line.insert(0, "Passed")
            summary['rows_passed'] = summary['rows_passed'] + 1
        output.append(line)
        line = []
        result = ''

    context_data = {
        'file_definition': file_definition,
        'file_structure': file_structure,
        'name': definition,
        'summary': summary,
        'output': {'data': output, 'cols': cols}
    }

    return context_data


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
    ret = {'result': True}

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

    try:
        if minv and is_decimal(str(minv).strip()):
            minv = float(str(minv).strip())
        else:
            minv = int(str(minv).strip())
    except:
        minv = None

    try:
        if maxv and is_decimal(str(maxv).strip()):
            maxv = float(str(maxv).strip())
        else:
            maxv = int(str(maxv).strip())
    except:
        maxv = None

    if minv and value < minv:
        ret['result'] = False
        ret['message'] = '. Less than ' + str(minv)

    if maxv and value > maxv:
        ret['result'] = False
        ret['message'] = '. Greater than ' + str(maxv)

    return ret
