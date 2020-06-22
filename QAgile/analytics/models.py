from django.db import connection
from ..home.models import dict_fetchall, isfloat


# Create your models here.
def load_tenrox_data(tenrox_data):
    records = 0

    with connection.cursor() as cursor:
        cursor.execute("TRUNCATE qagile_tenrox_data")

    for rec in tenrox_data['Reports']['Detail']['Table1']:
        sql = """insert into qagile_tenrox_data (vnid, ppmid, week_end, hrs, first_name) values(
            %(GroupUser_Logon_Name)s, %(Project_Code)s, %(Week_Ending_Date)s, %(Total_Time)s, %(Full_Name)s
        )
        """
        records = records+1
        # print("inserted")
        with connection.cursor() as cursor:
            cursor.execute(sql, rec)

    with connection.cursor() as cursor:
        cursor.execute("""
        INSERT INTO `qagile`.`qagile_tenrox_invalid_vnids`
        (`tenrox_vnid`,`tenrox_name`)
        select distinct vnid, first_name from qagile_tenrox_data where length(vnid) > 7
        and vnid not in (select tenrox_vnid from  qagile_tenrox_invalid_vnids)
        """)

    # with connection.cursor() as cursor:
    #    cursor.execute("""
    #        update qagile_tenrox_data set weekstart = DATE_SUB(str_to_date(SUBSTRING(week_end, 1, 10), '%m/%d/%Y'),
    #        INTERVAL 5 DAY) where record_id != 0
    #    """)
    #
    # with connection.cursor() as cursor:
    #    cursor.execute("""
    #        update qagile_tenrox_data set vnid = 'vn03616' where record_id != 0 and vnid='VN00016808'
    #    """)
    #
    # with connection.cursor() as cursor:
    #    cursor.execute("""
    #        update qagile_tenrox_data set vnid = 'VN03710' where record_id != 0 and vnid='VN00019650'
    #    """)
    #
    # with connection.cursor() as cursor:
    #    cursor.execute("""
    #        update qagile_tenrox_data set vnid = 'vn02185' where record_id != 0 and vnid='VN00014416'
    #    """)
    #
    # with connection.cursor() as cursor:
    #    cursor.execute("""
    #        update qagile_tenrox_data set vnid = 'vn03709' where record_id != 0 and vnid='VN00019658'
    #    """)
    #
    # with connection.cursor() as cursor:
    #    cursor.execute("""
    #        update qagile_tenrox_data set vnid = 'vn08613' where record_id != 0 and vnid='VN00023499'
    #    """)
    #
    # with connection.cursor() as cursor:
    #    cursor.execute("""
    #        update qagile_tenrox_data set vnid = 'rpaolin' where record_id != 0 and vnid='US00036912'
    #    """)

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

    if filters['dt_range']:
        dt_range = """and (weekstart between 
                    from_unixtime("""+filters['dt_range'][0].split(";")[0]+"""/1000) 
                    and 
                    from_unixtime("""+filters['dt_range'][0].split(";")[1]+"""/1000)
                    )"""
        conditions = conditions + dt_range + " "

    sql_planned = """
        select weekstart, sum(hrs) as hrs from qagile_v_planned_approved 
        """ + conditions + """ 
        group by weekstart order by weekstart asc
    """
    sql_actuals = """
        select weekstart, sum(hrs) as hrs from qagile_v_actuals 
        """ + conditions + """ 
        group by weekstart order by weekstart asc
    """

    print(sql_actuals,sql_planned)

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
        sql = """select project_id, vnid, first_name, last_name from qagile_v_project_resource
                    order by project_id"""
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


def get_resource_data(filters):
    conditions = 'and 1=1 '

    if filters['domains']:
        domains = "and d.domain_id in ("+str(filters['domains']).replace("[", "").replace("]", "")+")"
        # conditions = conditions + domains + " "

    if filters['ppmids']:
        projects = "and project_id in ("+str(filters['ppmids']).replace("[", "").replace("]", "")+")"
        # conditions = conditions + projects + " "

    if filters['vnids']:
        vnids = "and rl.person_id in ("+str(filters['vnids']).replace("[", "").replace("]", "")+")"
        conditions = conditions + vnids + " "

    if 'dt_range' in filters:
        dt_range = """and (week between 
                    from_unixtime("""+filters['dt_range'][0].split(";")[0]+"""/1000) 
                    and 
                    from_unixtime("""+filters['dt_range'][0].split(";")[1]+"""/1000)
                    )"""
        conditions = conditions + dt_range + " "

    sql_planned = """
        select rl.rfs_request_id, rl.person_id, date_format((rl.week),'%Y-%m-%d') as week, rl.hrs, 
        p.first_name, p.last_name, rfs.project_id, rfs.project_name
        from qagile_rfs_resourceloading rl, qagile_domains_team t,
        qagile_person p, qagile_rfs_request rfs 
        where rfs.rfs_request_id = rl.rfs_request_id 
        and rl.person_id = t.vnid 
        and t.vnid=p.vnid
        and rfs.active=1
        """ + conditions + """ 
        order by  p.vnid, rfs.project_id, week 
    """

    print(sql_planned)

    with connection.cursor() as cursor:
        cursor.execute(sql_planned)
        chartdata = dict_fetchall(cursor)
        cursor.close()

    return chartdata


def get_datahead(filters):
    conditions = 'and 1=1 '

    if filters['domains']:
        domains = "and d.domain_id in ("+str(filters['domains']).replace("[", "").replace("]", "")+")"
        # conditions = conditions + domains + " "

    if filters['ppmids']:
        projects = "and project_id in ("+str(filters['ppmids']).replace("[", "").replace("]", "")+")"
        # conditions = conditions + projects + " "

    if filters['vnids']:
        vnids = "and rl.person_id in ("+str(filters['vnids']).replace("[", "").replace("]", "")+")"
        conditions = conditions + vnids + " "

    if 'dt_range' in filters:
        dt_range = """and (week between 
                    from_unixtime("""+filters['dt_range'][0].split(";")[0]+"""/1000) 
                    and 
                    from_unixtime("""+filters['dt_range'][0].split(";")[1]+"""/1000)
                    )"""
        conditions = conditions + dt_range + " "

    sql_planned = """
    select floor(DATEDIFF(max(week), min(week))/7) as numofweeks, 
    date_format(min(week),'%Y-%m-%d') as weekstart, date_format(max(week),'%Y-%m-%d') as weeksend from (
        select rl.*, p.first_name, p.last_name, rfs.project_id, rfs.project_name
        from qagile_rfs_resourceloading rl, qagile_domains_team t,
        qagile_person p, qagile_rfs_request rfs 
        where rfs.rfs_request_id = rl.rfs_request_id 
        and rl.person_id = t.vnid 
        and t.vnid=p.vnid
        and rfs.active=1
        """ + conditions + """ 
        order by  p.vnid, rfs.project_id, week 
    ) data
    """

    print("***********************************************************8")
    print(sql_planned)

    with connection.cursor() as cursor:
        cursor.execute(sql_planned)
        datahead = dict_fetchall(cursor)
        cursor.close()

    print(datahead)

    return datahead


def get_statictbl(filters):
    conditions = 'and 1=1 '

    if filters['domains']:
        domains = "and d.domain_id in ("+str(filters['domains']).replace("[", "").replace("]", "")+")"
        # conditions = conditions + domains + " "

    if filters['ppmids']:
        projects = "and project_id in ("+str(filters['ppmids']).replace("[", "").replace("]", "")+")"
        # conditions = conditions + projects + " "

    if filters['vnids']:
        vnids = "and rl.person_id in ("+str(filters['vnids']).replace("[", "").replace("]", "")+")"
        conditions = conditions + vnids + " "

    if 'dt_range' in filters:
        dt_range = """and (week between 
                    from_unixtime("""+filters['dt_range'][0].split(";")[0]+"""/1000) 
                    and 
                    from_unixtime("""+filters['dt_range'][0].split(";")[1]+"""/1000)
                    )"""
        conditions = conditions + dt_range + " "

    sql_planned = """
    select distinct concat(first_name, " ", last_name) as name, 
                project_id as project_id,
                '' as domain_name, 
                'Resource' as role,
                '0' as rate,
                rfs_request_id, person_id, project_name
    from (
        select rl.*, p.first_name, p.last_name, rfs.project_id, rfs.project_name
        from qagile_rfs_resourceloading rl, qagile_domains_team t ,
        qagile_person p, qagile_rfs_request rfs 
        where rfs.rfs_request_id = rl.rfs_request_id 
        and rl.person_id = t.vnid 
        and t.vnid=p.vnid
        and rfs.active=1
        """ + conditions + """ 
        order by p.vnid, rfs.project_id, week 
    ) data order by person_id, project_id
    """

    with connection.cursor() as cursor:
        cursor.execute(sql_planned)
        datahead = dict_fetchall(cursor)
        cursor.close()

    return datahead
