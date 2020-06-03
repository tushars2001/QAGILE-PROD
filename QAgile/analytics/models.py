from django.db import connection
from ..home.models import dict_fetchall, isfloat


# Create your models here.
def load_tenrox_data(tenrox_data):
    records = 0

    with connection.cursor() as cursor:
        cursor.execute("TRUNCATE qagile_tenrox_data")

    for rec in tenrox_data['Reports']['Detail']['Table1']:
        sql = """insert into qagile_tenrox_data (vnid, ppmid, week_end, hrs) values(
            %(GroupUser_Logon_Name)s, %(Project_Code)s, %(Week_Ending_Date)s, %(Total_Time)s
        )
        """
        records = records+1
        # print("inserted")
        with connection.cursor() as cursor:
            cursor.execute(sql, rec)

    with connection.cursor() as cursor:
        cursor.execute("""
            update qagile_tenrox_data set weekstart = DATE_SUB(str_to_date(SUBSTRING(week_end, 1, 10), '%m/%d/%Y'), 
            INTERVAL 5 DAY) where record_id != 0
        """)

    return records


def get_chart_data(filters):
    conditions = 'where 1=1 '

    if filters['domains']:
        domains = "and domain_id in ("+str(filters['domains']).replace("[", "").replace("]", "")+")"
        conditions = conditions + domains + " "

    if filters['ppmids']:
        projects = "and project_id in ("+str(filters['ppmids']).replace("[", "").replace("]", "")+")"
        conditions = conditions + projects + " "

    if filters['vnids']:
        vnids = "and vnid in ("+str(filters['vnids']).replace("[", "").replace("]", "")+")"
        conditions = conditions + vnids + " "

    assert False

    sql_planned = """
        select weekstart, sum(hrs) as hrs from qagile_v_planned where project_id='IM13011'
        and (weekstart between '2020-03-01 00:00:00' and '2020-03-31 00:00:00')
        group by weekstart order by weekstart asc
    """
    sql_actuals = """
        select weekstart, sum(hrs) as hrs from qagile_v_actuals where project_id='IM13011'
        and (weekstart between '2020-03-01 00:00:00' and '2020-03-31 00:00:00')
        group by weekstart order by weekstart asc
    """

    with connection.cursor() as cursor:
        cursor.execute(sql_planned)
        planned = dict_fetchall(cursor)
        cursor.execute(sql_actuals)
        actuals = dict_fetchall(cursor)
        cursor.close()

    chartdata = {
        'planned': planned,
        'actuals': actuals
    }

    return chartdata


def get_domains_info():
    with connection.cursor() as cursor:
        sql = """select distinct domain_id, domain_name from qagile_v_domain_project"""
        cursor.execute(sql)
        data = dict_fetchall(cursor)
        cursor.close()

    return data


def get_project_domains():
    with connection.cursor() as cursor:
        sql = """select domain_id, project_id, project_name from qagile_v_domain_project"""
        cursor.execute(sql)
        data = dict_fetchall(cursor)
        cursor.close()

    return data


def get_project_persons():
    with connection.cursor() as cursor:
        sql = """select project_id, vnid, first_name, last_name from qagile_v_project_resource"""
        cursor.execute(sql)
        data = dict_fetchall(cursor)
        cursor.close()

    return data


def get_project_info():
    with connection.cursor() as cursor:
        sql = """select distinct project_id, project_name from qagile_v_domain_project"""
        cursor.execute(sql)
        data = dict_fetchall(cursor)
        cursor.close()

    return data


def get_persons_info():
    with connection.cursor() as cursor:
        sql = """select distinct vnid, first_name, last_name from qagile_v_project_resource"""
        cursor.execute(sql)
        data = dict_fetchall(cursor)
        cursor.close()

    return data
