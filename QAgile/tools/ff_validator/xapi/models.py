from ..identity.models import dict_fetchall
from django.db import connection, transaction, DatabaseError, IntegrityError


def col_suggestions(col_name, account_name):
    html = """
        <h4>Use existing column definition </h4>
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

    sql = """SELECT keyval, col_name, col_data_type, required, max_len, is_fixed_len, format, min_value, max_value, 
    decimals, all_null, is_pk FROM tools.tools_v_suggestions where col_name like '""" + col_name + """%%' and 
    account_name = %(account_name)s group by keyval, col_name, col_data_type, required, max_len, is_fixed_len, 
    format, min_value, max_value, decimals, all_null, is_pk """

    with connection.cursor() as cursor:
        cursor.execute(sql, {'account_name': account_name})
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

    if len(rows):
        html = html + rows + """</tbody></table>"""
    else:
        html = ''

    return html
