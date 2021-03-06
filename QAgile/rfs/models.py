from django.db import models
from django.db import connection
from ..admin.models import dict_fetchall, isfloat
from datetime import datetime, timedelta


def ifnotdef(struct, key, itis = 'str'):
    if key in struct:
        if len(struct[key]):
            if itis == 'int':
                return struct[key]  # if it is present in struct and int with some value, do not mark quotes
            elif itis == 'yn':
                if struct[key] == 'on':
                    return "1"  # if it is present in struct and not int with some value, mark quotes with Y/N
            else:
                return struct[key]  # if it is present in struct and not int with some value, mark quotes
                # NO NEED TO MARK IN QUOTES USING PARAM QUERIES NOW
        else:
            return None  # if present in struct but blank then return null for DB
    else:
        return None  # if not present in struct then return null for DB


def get_rfsdata():

    sql = """
            select rfs_request_id, project_id, project_name, rfs_status, last_updated, requester_name, 
            requester_role, pm, p2.first_name as pom_name, p.first_name as qa_coe_lead_name, pom,  qa_coe_lead
            from qagile_rfs_request rfs left join qagile_person p
            on rfs.qa_coe_lead = p.vnid
            left join qagile_person p2
            on rfs.pom = p2.vnid
            where rfs.active = 1
    """

    with connection.cursor() as cursor:
        cursor.execute(sql)
        data = dict_fetchall(cursor)
        cursor.close()

    return data


def update_rfs_request(postdata):

    fields = {}

    fields['rfs_request_id'] = ifnotdef(postdata, 'rfs_request_id', 'int')
    fields['created'] = ifnotdef(postdata, 'created', 'str')
    fields['domain_id'] = ifnotdef(postdata, 'domain_id', 'int')
    fields['last_updated'] = ifnotdef(postdata, 'last_updated', 'str')
    fields['last_updated_by'] = ifnotdef(postdata, 'last_updated_by', 'str')
    fields['current_project_status'] = ifnotdef(postdata, 'current_project_status', 'str')
    fields['qa_spoc'] = ifnotdef(postdata, 'qa_spoc', 'str')
    fields['kickoff_date'] = ifnotdef(postdata, 'kickoff_date', 'str')
    fields['repository'] = ifnotdef(postdata, 'repository', 'str')
    fields['repository_access'] = ifnotdef(postdata, 'repository_access', 'str')
    fields['alm_jira_link'] = ifnotdef(postdata, 'alm_jira_link', 'str')
    fields['project_id'] = ifnotdef(postdata, 'project_id', 'str')
    fields['project_name'] = ifnotdef(postdata, 'project_name', 'str')
    fields['category'] = ifnotdef(postdata, 'category', 'str')
    fields['requester_name'] = ifnotdef(postdata, 'requester_name', 'str')
    fields['requester_email'] = ifnotdef(postdata, 'requester_email', 'str')
    fields['requester_role'] = ifnotdef(postdata, 'requester_role', 'str')
    fields['pm'] = ifnotdef(postdata, 'pm', 'str')
    fields['PoM'] = ifnotdef(postdata, 'PoM', 'str')
    fields['dir_it'] = ifnotdef(postdata, 'dir_it', 'str')
    fields['project_poc'] = ifnotdef(postdata, 'project_poc', 'str')
    fields['project_type'] = ifnotdef(postdata, 'project_type', 'str')
    fields['project_size'] = ifnotdef(postdata, 'project_size', 'str')
    fields['tentative_prep_start'] = ifnotdef(postdata, 'tentative_prep_start', 'str')
    fields['tentative_prep_end'] = ifnotdef(postdata, 'tentative_prep_end', 'str')
    fields['tentative_plan_start'] = ifnotdef(postdata, 'tentative_plan_start', 'str')
    fields['tentative_plan_end'] = ifnotdef(postdata, 'tentative_plan_end', 'str')
    fields['tentative_exec_start'] = ifnotdef(postdata, 'tentative_exec_start', 'str')
    fields['tentative_exec_end'] = ifnotdef(postdata, 'tentative_exec_end', 'str')
    fields['tentative_close_start'] = ifnotdef(postdata, 'tentative_close_start', 'str')
    fields['tentative_close_end'] = ifnotdef(postdata, 'tentative_close_end', 'str')
    fields['project_description'] = ifnotdef(postdata, 'project_description', 'str')
    fields['qa_coe_lead'] = ifnotdef(postdata, 'qa_coe_lead', 'str')
    fields['confidential'] = ifnotdef(postdata, 'confidential', 'str')
    fields['confidential_alt_name'] = ifnotdef(postdata, 'confidential_alt_name', 'str')
    fields['confidential_doc_share_method'] = ifnotdef(postdata, 'confidential_doc_share_method', 'str')
    fields['pii_bsi'] = ifnotdef(postdata, 'pii_bsi', 'str')
    fields['pii_bsi_description'] = ifnotdef(postdata, 'pii_bsi_description', 'str')
    fields['scope_remote'] = ifnotdef(postdata, 'scope_remote', 'str')
    fields['scope_ticket_num'] = ifnotdef(postdata, 'scope_ticket_num', 'str')
    fields['1_service'] = ifnotdef(postdata, '1_service', 'str')
    fields['1_include'] = ifnotdef(postdata, '1_include', 'yn')
    fields['1_startdt'] = ifnotdef(postdata, '1_startdt', 'str')
    fields['1_enddt'] = ifnotdef(postdata, '1_enddt', 'str')
    fields['1_comment'] = ifnotdef(postdata, '1_comment', 'str')

    fields['2_service'] = ifnotdef(postdata, '2_service', 'str')
    fields['2_include'] = ifnotdef(postdata, '2_include', 'yn')
    fields['2_startdt'] = ifnotdef(postdata, '2_startdt', 'str')
    fields['2_enddt'] = ifnotdef(postdata, '2_enddt', 'str')
    fields['2_comment'] = ifnotdef(postdata, '2_comment', 'str')

    fields['3_service'] = ifnotdef(postdata, '3_service', 'str')
    fields['3_include'] = ifnotdef(postdata, '3_include', 'yn')
    fields['3_startdt'] = ifnotdef(postdata, '3_startdt', 'str')
    fields['3_enddt'] = ifnotdef(postdata, '3_enddt', 'str')
    fields['3_comment'] = ifnotdef(postdata, '3_comment', 'str')

    fields['4_service'] = ifnotdef(postdata, '4_service', 'str')
    fields['4_include'] = ifnotdef(postdata, '4_include', 'yn')
    fields['4_startdt'] = ifnotdef(postdata, '4_startdt', 'str')
    fields['4_enddt'] = ifnotdef(postdata, '4_enddt', 'str')
    fields['4_comment'] = ifnotdef(postdata, '4_comment', 'str')

    fields['5_service'] = ifnotdef(postdata, '5_service', 'str')
    fields['5_include'] = ifnotdef(postdata, '5_include', 'yn')
    fields['5_startdt'] = ifnotdef(postdata, '5_startdt', 'str')
    fields['5_enddt'] = ifnotdef(postdata, '5_enddt', 'str')
    fields['5_comment'] = ifnotdef(postdata, '5_comment', 'str')

    fields['6_service'] = ifnotdef(postdata, '6_service', 'str')
    fields['6_include'] = ifnotdef(postdata, '6_include', 'yn')
    fields['6_startdt'] = ifnotdef(postdata, '6_startdt', 'str')
    fields['6_enddt'] = ifnotdef(postdata, '6_enddt', 'str')
    fields['6_comment'] = ifnotdef(postdata, '6_comment', 'str')

    fields['7_service'] = ifnotdef(postdata, '7_service', 'str')
    fields['7_include'] = ifnotdef(postdata, '7_include', 'yn')
    fields['7_startdt'] = ifnotdef(postdata, '7_startdt', 'str')
    fields['7_enddt'] = ifnotdef(postdata, '7_enddt', 'str')
    fields['7_comment'] = ifnotdef(postdata, '7_comment', 'str')

    fields['rfs_status'] = ifnotdef(postdata, 'rfs_status', 'str')

    print("FIELDS**************")
    print(fields)
    print("************FIELDS**************")

    exist = get_rfs_request(fields['rfs_request_id'])

    last_id = ''

    if not exist:
        sql = """insert into qagile_rfs_request (
                            `domain_id`,
                            `current_project_status`,
                            `qa_spoc`,
                            `kickoff_date`,
                            `repository`,
                            `repository_access`,
                            `alm_jira_link`,
                            `project_id`,
                            `project_name`,
                            `category`,
                            `requester_name`,
                            `requester_email`,
                            `requester_role`,
                            `pm`,
                            `PoM`,
                            `dir_it`,
                            `project_poc`,
                            `project_type`,
                            `project_size`,
                            `tentative_prep_start`,
                            `tentative_prep_end`,
                            `tentative_plan_start`,
                            `tentative_plan_end`,
                            `tentative_exec_start`,
                            `tentative_exec_end`,
                            `tentative_close_start`,
                            `tentative_close_end`,
                            `project_description`,
                            `qa_coe_lead`,
                            `confidential`,
                            `confidential_alt_name`,
                            `confidential_doc_share_method`,
                            `pii_bsi`,
                            `pii_bsi_description`,
                            `scope_remote`,
                            `scope_ticket_num`,
                            last_updated
                        ) values(
                            %(domain_id)s ,
                            %(current_project_status)s ,
                            %(qa_spoc)s ,
                            %(kickoff_date)s ,
                            %(repository)s ,
                            %(repository_access)s ,
                            %(alm_jira_link)s ,
                            %(project_id)s ,
                            %(project_name)s ,
                            %(category)s ,
                            %(requester_name)s ,
                            %(requester_email)s ,
                            %(requester_role)s ,
                            %(pm)s ,
                            %(PoM)s ,
                            %(dir_it)s ,
                            %(project_poc)s ,
                            %(project_type)s ,
                            %(project_size)s ,
                            %(tentative_prep_start)s ,
                            %(tentative_prep_end)s ,
                            %(tentative_plan_start)s ,
                            %(tentative_plan_end)s ,
                            %(tentative_exec_start)s ,
                            %(tentative_exec_end)s ,
                            %(tentative_close_start)s ,
                            %(tentative_close_end)s ,
                            %(project_description)s ,
                            %(qa_coe_lead)s ,
                            %(confidential)s ,
                            %(confidential_alt_name)s ,
                            %(confidential_doc_share_method)s ,
                            %(pii_bsi)s ,
                            %(pii_bsi_description)s ,
                            %(scope_remote)s ,
                            %(scope_ticket_num)s,
                            current_timestamp
                        )
                  """
        last_id = "SELECT LAST_INSERT_ID()"
    else:
        sql = """update qagile_rfs_request 
                        set 
                            `domain_id`	=	%(domain_id)s ,
                            `current_project_status`	=	%(current_project_status)s ,
                            `qa_spoc`	=	%(qa_spoc)s ,
                            `kickoff_date`	=	%(kickoff_date)s ,
                            `repository`	=	%(repository)s ,
                            `repository_access`	=	%(repository_access)s ,
                            `alm_jira_link`	=	%(alm_jira_link)s ,
                            `project_id`	=	%(project_id)s ,
                            `project_name`	=	%(project_name)s ,
                            `category`	=	%(category)s ,
                            `requester_name`	=	%(requester_name)s ,
                            `requester_email`	=	%(requester_email)s ,
                            `requester_role`	=	%(requester_role)s ,
                            `pm`	=	%(pm)s ,
                            `PoM`	=	%(PoM)s ,
                            `dir_it`	=	%(dir_it)s ,
                            `project_poc`	=	%(project_poc)s ,
                            `project_type`	=	%(project_type)s ,
                            `project_size`	=	%(project_size)s ,
                            `tentative_prep_start`	=	%(tentative_prep_start)s ,
                            `tentative_prep_end`	=	%(tentative_prep_end)s ,
                            `tentative_plan_start`	=	%(tentative_plan_start)s ,
                            `tentative_plan_end`	=	%(tentative_plan_end)s ,
                            `tentative_exec_start`	=	%(tentative_exec_start)s ,
                            `tentative_exec_end`	=	%(tentative_exec_end)s ,
                            `tentative_close_start`	=	%(tentative_close_start)s ,
                            `tentative_close_end`	=	%(tentative_close_end)s ,
                            `project_description`	=	%(project_description)s ,
                            `qa_coe_lead`	=	%(qa_coe_lead)s ,
                            `confidential`	=	%(confidential)s ,
                            `confidential_alt_name`	=	%(confidential_alt_name)s ,
                            `confidential_doc_share_method`	=	%(confidential_doc_share_method)s ,
                            `pii_bsi`	=	%(pii_bsi)s ,
                            `pii_bsi_description`	=	%(pii_bsi_description)s ,
                            `scope_remote`	=	%(scope_remote)s ,
                            `scope_ticket_num`	=	%(scope_ticket_num)s ,
                            `last_updated` = current_timestamp
                        where rfs_request_id = %(rfs_request_id)s    
                    """
    print(sql)

    with connection.cursor() as cursor:
        cursor.execute(sql, fields)
        data = cursor.fetchall()
        cursor.close()

    print("********** returning from update **********")
    print(data)

    if not exist:
        with connection.cursor() as cursor:
            cursor.execute(last_id)
            data = cursor.fetchall()
            cursor.close()
        print("!!!! LAST INSERT ID !!!!")
        fields['rfs_request_id'] = data[0][0]

    set_rfs_status(fields['rfs_request_id'], fields['rfs_status'])

    scopesqls = {}
    
    scopesqls['del'] = "delete from qagile_rfs_request_scope where rfs_request_id = %(rfs_request_id)s"

    scopesqls['ins1'] = """insert into qagile_rfs_request_scope 
                    (rfs_request_id,service,include,startdate,enddate,comment,seq)
                    values (
                    %(rfs_request_id)s,
                    %(1_service)s,
                    %(1_include)s,
                    %(1_startdt)s,
                    %(1_enddt)s,
                    %(1_comment)s,
                    1
                    )
                    """

    scopesqls['ins2'] = """insert into qagile_rfs_request_scope 
                        (rfs_request_id,service,include,startdate,enddate,comment,seq)
                        values (
                        %(rfs_request_id)s,
                        %(2_service)s,
                        %(2_include)s,
                        %(2_startdt)s,
                        %(2_enddt)s,
                        %(2_comment)s,
                        2
                        )
                        """

    scopesqls['ins3'] = """insert into qagile_rfs_request_scope 
                        (rfs_request_id,service,include,startdate,enddate,comment,seq)
                        values (
                        %(rfs_request_id)s,
                        %(3_service)s,
                        %(3_include)s,
                        %(3_startdt)s,
                        %(3_enddt)s,
                        %(3_comment)s,
                        3
                        )
                        """

    scopesqls['ins4'] = """insert into qagile_rfs_request_scope 
                        (rfs_request_id,service,include,startdate,enddate,comment,seq)
                        values (
                        %(rfs_request_id)s,
                        %(4_service)s,
                        %(4_include)s,
                        %(4_startdt)s,
                        %(4_enddt)s,
                        %(4_comment)s,
                        4
                        )
                        """

    scopesqls['ins5'] = """insert into qagile_rfs_request_scope 
                        (rfs_request_id,service,include,startdate,enddate,comment,seq)
                        values (
                        %(rfs_request_id)s,
                        %(5_service)s,
                        %(5_include)s,
                        %(5_startdt)s,
                        %(5_enddt)s,
                        %(5_comment)s,
                        5
                        )
                        """

    scopesqls['ins6'] = """insert into qagile_rfs_request_scope 
                            (rfs_request_id,service,include,startdate,enddate,comment,seq)
                            values (
                            %(rfs_request_id)s,
                            %(6_service)s,
                            %(6_include)s,
                            %(6_startdt)s,
                            %(6_enddt)s,
                            %(6_comment)s,
                            6
                            )
                            """

    scopesqls['ins7'] = """insert into qagile_rfs_request_scope 
                        (rfs_request_id,service,include,startdate,enddate,comment,seq)
                        values (
                        %(rfs_request_id)s,
                        %(7_service)s,
                        %(7_include)s,
                        %(7_startdt)s,
                        %(7_enddt)s,
                        %(7_comment)s,
                        7
                        )
                        """

    sql_wf_log(fields['rfs_request_id'], fields['rfs_status'])

    print(scopesqls)

    with connection.cursor() as cursor:
        cursor.execute(scopesqls['del'], fields)
        cursor.execute(scopesqls['ins1'], fields)
        cursor.execute(scopesqls['ins2'], fields)
        cursor.execute(scopesqls['ins3'], fields)
        cursor.execute(scopesqls['ins4'], fields)
        cursor.execute(scopesqls['ins5'], fields)
        cursor.execute(scopesqls['ins6'], fields)
        cursor.execute(scopesqls['ins7'], fields)
        cursor.close()

    return fields['rfs_request_id']


def update_rfs_resourceLoading(postdata):
    fields = {}
    print(postdata)

    fields['rfs_request_id'] = ifnotdef(postdata, 'rfs_request_id', 'int')
    fields['weekstart'] = ifnotdef(postdata, 'weekstart', 'str')
    fields['numofweeks'] = ifnotdef(postdata, 'numofweeks', 'int')
    fields['rfs_status'] = ifnotdef(postdata, 'rfs_status', 'str')
    keys = list(postdata.keys())

    try:
        datetime_object = datetime.strptime(postdata.getlist('weekstart')[0], '%Y-%m-%d')
        start = datetime_object - timedelta(days=datetime_object.weekday())
        start_str = start.strftime("%Y-%m-%d")
        fields['weekstart'] = start_str
    except:
        print('datetime error to ignore')

    head_sql = {
                    'delete': "delete from qagile_rfs_resourceLoading_weeks where rfs_request_id = %(rfs_request_id)s ",
                    'insert': """
                            insert into qagile_rfs_resourceLoading_weeks (rfs_request_id, weekstart, numofweeks) values(
                            %(rfs_request_id)s,
                            %(weekstart)s,
                            %(numofweeks)s
                        )
                     """
                }

    with connection.cursor() as cursor:
        cursor.execute(head_sql['delete'], fields)
        cursor.execute(head_sql['insert'], fields)
        cursor.close()

    deatilsqls = []

    for key in keys:
        if 'f_week_hrs_' in key:
            key_split = key.split("_")
            person_id = key_split[3]
            week = key_split[4]
            hrs = ifnotdef(postdata, key, 'int')
            hrs = 0 if hrs is None else hrs
            sqlin = """
                    insert into qagile_rfs_resourceLoading (rfs_request_id, person_id, week, hrs) values(
                    %(rfs_request_id)s,
                    '""" + person_id + """',
                    '""" + week + """',
                    """ + str(hrs) + """
                    )
            """
            deatilsqls.append(sqlin)

    if not deatilsqls:
        for key in keys:
            if 'f_vnid' in key:
                for vn in postdata.getlist('f_vnid'):
                    person_id = vn
                    sqlin = """
                            insert into qagile_rfs_resourceLoading (rfs_request_id, person_id, week, hrs) values(
                            %(rfs_request_id)s,
                            '""" + person_id + """',
                            NULL,NULL
                            )
                    """
                    deatilsqls.append(sqlin, fields)

    print(deatilsqls)

    del_detail_sql = "delete from qagile_rfs_resourceLoading where rfs_request_id = %(rfs_request_id)s"

    with connection.cursor() as cursor:
        cursor.execute(del_detail_sql, fields)
        for sql in deatilsqls:
            cursor.execute(sql, fields)
        cursor.close()

    set_rfs_status(fields['rfs_request_id'], fields['rfs_status'])

    return fields['rfs_request_id']


def update_rfs_estimates(postdata):
    fields = {}
    print("in model")
    print(postdata)

    fields['rfs_request_id'] = ifnotdef(postdata, 'rfs_request_id', 'int')
    fields['rfs_status'] = ifnotdef(postdata, 'rfs_status', 'str')

    # ************ KT Fields *********
    fields['KTAPP_hrs'] = ifnotdef(postdata, 'KTAPP_hrs', 'int')
    fields['KTAPP_comments'] = ifnotdef(postdata, 'KTAPP_comments', 'str')
    fields['KTSSR_hrs'] = ifnotdef(postdata, 'KTSSR_hrs', 'int')
    fields['KTSSR_comments'] = ifnotdef(postdata, 'KTSSR_comments', 'str')

    # ************ Testing Services Fields *********
    fields['SIT_hrs'] = ifnotdef(postdata, 'SIT_hrs', 'int')
    fields['SIT_comments'] = ifnotdef(postdata, 'SIT_comments', 'str')
    fields['UAT_hrs'] = ifnotdef(postdata, 'UAT_hrs', 'int')
    fields['UAT_comments'] = ifnotdef(postdata, 'UAT_comments', 'str')
    fields['PERF_hrs'] = ifnotdef(postdata, 'PERF_hrs', 'int')
    fields['PERF_comments'] = ifnotdef(postdata, 'PERF_comments', 'str')
    fields['SEC_hrs'] = ifnotdef(postdata, 'SEC_hrs', 'int')
    fields['SEC_comments'] = ifnotdef(postdata, 'SEC_comments', 'str')
    fields['ACC_hrs'] = ifnotdef(postdata, 'ACC_hrs', 'int')
    fields['ACC_comments'] = ifnotdef(postdata, 'ACC_comments', 'str')
    fields['PRDAT_hrs'] = ifnotdef(postdata, 'PRDAT_hrs', 'int')
    fields['PRDAT_comments'] = ifnotdef(postdata, 'PRDAT_comments', 'str')
    fields['POM_hrs'] = ifnotdef(postdata, 'POM_hrs', 'int')
    fields['POM_comments'] = ifnotdef(postdata, 'POM_comments', 'str')

    # ************ Total QA Fields *********
    fields['total_qa_comments'] = ifnotdef(postdata, 'total_qa_comments', 'str')

    # ************ Travel Cost Fields *********
    fields['TRVCO_hrs'] = ifnotdef(postdata, 'TRVCO_hrs', 'int')
    fields['TRVCO_comments'] = ifnotdef(postdata, 'TRVCO_comments', 'str')

    # ************ SIT Role Fields *********
    fields['SITRole'] = ifnotdef(postdata, 'SITRole', 'str')
    fields['SITDescription'] = ifnotdef(postdata, 'SITDescription', 'str')

    # ************ UAT Role Fields *********
    fields['UATRole'] = ifnotdef(postdata, 'UATRole', 'str')
    fields['UATDescription'] = ifnotdef(postdata, 'UATDescription', 'str')

    sqls = {}

    sqls['estimates_bkp'] = """
                            insert into del_log_qagile_rfs_estimates
                            (rfs_request_id,activity_code,effort,unit,comment)
                            select rfs_request_id,activity_code,effort,unit,comment from qagile_rfs_estimates
                            where rfs_request_id=%(rfs_request_id)s"""

    sqls['estimates_del'] = "delete from qagile_rfs_estimates where rfs_request_id= %(rfs_request_id)s"

    sqls['estimates_ins_KTAPP'] = """
                                insert into qagile_rfs_estimates (rfs_request_id,activity_code,effort,comment) values(
                                %(rfs_request_id)s,
                                'KTAPP',
                                %(KTAPP_hrs)s,
                                %(KTAPP_comments)s
                                )
                                """

    sqls['estimates_ins_KTSSR'] = """
                                insert into qagile_rfs_estimates (rfs_request_id,activity_code,effort,comment) values(
                                %(rfs_request_id)s,
                                'KTSSR',
                                %(KTSSR_hrs)s,
                                %(KTSSR_comments)s
                                )
                                """

    sqls['estimates_ins_SIT'] = """
                                insert into qagile_rfs_estimates (rfs_request_id,activity_code,effort,comment) values(
                                %(rfs_request_id)s,
                                'SIT',
                                %(SIT_hrs)s,
                                %(SIT_comments)s
                                )
                                """

    sqls['estimates_ins_UAT'] = """
                                insert into qagile_rfs_estimates (rfs_request_id,activity_code,effort,comment) values(
                                %(rfs_request_id)s,
                                'UAT',
                                %(UAT_hrs)s,
                                %(UAT_comments)s
                                )
                                """

    sqls['estimates_ins_PERF'] = """
                                insert into qagile_rfs_estimates (rfs_request_id,activity_code,effort,comment) values(
                                %(rfs_request_id)s,
                                'PERF',
                                %(PERF_hrs)s,
                                %(PERF_comments)s
                                )
                                """

    sqls['estimates_ins_SEC'] = """
                                insert into qagile_rfs_estimates (rfs_request_id,activity_code,effort,comment) values(
                                %(rfs_request_id)s,
                                'SEC',
                                %(SEC_hrs)s,
                                %(SEC_comments)s
                                )
                                """

    sqls['estimates_ins_ACC'] = """
                                insert into qagile_rfs_estimates (rfs_request_id,activity_code,effort,comment) values(
                                %(rfs_request_id)s,
                                'ACC',
                                %(ACC_hrs)s,
                                %(ACC_comments)s
                                )
                                """

    sqls['estimates_ins_PRDAT'] = """
                                insert into qagile_rfs_estimates (rfs_request_id,activity_code,effort,comment) values(
                                %(rfs_request_id)s,
                                'PRDAT',
                                %(PRDAT_hrs)s,
                                %(PRDAT_comments)s
                                )
                                """

    sqls['estimates_ins_POM'] = """
                                insert into qagile_rfs_estimates (rfs_request_id,activity_code,effort,comment) values(
                                %(rfs_request_id)s,
                                'POM',
                                %(POM_hrs)s,
                                %(POM_comments)s
                                )
                                """

    sqls['estimates_ins_TRVCO'] = """
                                insert into qagile_rfs_estimates (rfs_request_id,activity_code,effort,comment) values(
                                %(rfs_request_id)s,
                                'TRVCO',
                                %(TRVCO_hrs)s,
                                %(TRVCO_comments)s
                                )
                                """

    sqls['estimates_head_del'] = """delete from qagile_rfs_estimates_raci_head 
                                where rfs_request_id=%(rfs_request_id)s"""

    sqls['estimates_head_ins'] = """
                                insert into qagile_rfs_estimates_raci_head 
                                (   rfs_request_id,SITRole,SITScope,UATRole,UATScope,total_qa_comments) values (
                                    %(rfs_request_id)s,
                                    %(SITRole)s,
                                    %(SITDescription)s,
                                    %(UATRole)s,
                                    %(UATDescription)s,
                                    %(total_qa_comments)s
                                )
                                """

    sqls['raci_del'] = "delete from qagile_rfs_estimates_raci where rfs_request_id= %(rfs_request_id)s"

    print(sqls)

    with connection.cursor() as cursor:
        cursor.execute(sqls['estimates_bkp'], fields)
        cursor.execute(sqls['estimates_del'], fields)
        cursor.execute(sqls['estimates_ins_KTAPP'], fields)
        cursor.execute(sqls['estimates_ins_KTSSR'], fields)
        cursor.execute(sqls['estimates_ins_SIT'], fields)
        cursor.execute(sqls['estimates_ins_UAT'], fields)
        cursor.execute(sqls['estimates_ins_PERF'], fields)
        cursor.execute(sqls['estimates_ins_SEC'], fields)
        cursor.execute(sqls['estimates_ins_ACC'], fields)
        cursor.execute(sqls['estimates_ins_PRDAT'], fields)
        cursor.execute(sqls['estimates_ins_POM'], fields)
        cursor.execute(sqls['estimates_ins_TRVCO'], fields)
        cursor.execute(sqls['estimates_head_del'], fields)
        cursor.execute(sqls['estimates_head_ins'], fields)
        cursor.execute(sqls['raci_del'], fields)

        keys = list(postdata.keys())

        for key in keys:
            raci_scope = ''

            if 'SITRole_' in key:
                raci_scope = 'SIT'
            if 'UATRole_' in key:
                raci_scope = 'UAT'

            if len(raci_scope):
                raci_code = key.split("_")[1]
                raci = key.split("_")[2]
                p_or_q = postdata[key][0]
                sql = """
                insert into qagile_rfs_estimates_raci (rfs_request_id,raci_code,raci_scope,p_or_q,RACI) values(
                    %(rfs_request_id)s,
                    '""" + raci_code + """',
                    '""" + raci_scope + """',
                    '""" + p_or_q + """',
                    '""" + raci + """'
                )
                """
                print(sql)
                cursor.execute(sql, fields)

        cursor.close()

    set_rfs_status(fields['rfs_request_id'], fields['rfs_status'])

    return fields['rfs_request_id']


def create_approved_copy(rfs_request_id):
    approval_num = get_approval_num(rfs_request_id)
    fields = {'rfs_request_id': rfs_request_id, 'approval_num': approval_num}

    sql1 = """
        INSERT INTO `qagile_rfs_request_approved`
        (
        `rfs_request_id`,
        `created`,
        `domain_id`,
        `last_updated`,
        `last_updated_by`,
        `current_project_status`,
        `qa_spoc`,
        `kickoff_date`,
        `repository`,
        `repository_access`,
        `alm_jira_link`,
        `project_id`,
        `project_name`,
        `category`,
        `requester_name`,
        `requester_email`,
        `requester_role`,
        `pm`,
        `PoM`,
        `dir_it`,
        `project_poc`,
        `project_type`,
        `project_size`,
        `tentative_prep_start`,
        `tentative_prep_end`,
        `tentative_plan_start`,
        `tentative_plan_end`,
        `tentative_exec_start`,
        `tentative_exec_end`,
        `tentative_close_start`,
        `tentative_close_end`,
        `project_description`,
        `qa_coe_lead`,
        `confidential`,
        `confidential_alt_name`,
        `confidential_doc_share_method`,
        `pii_bsi`,
        `pii_bsi_description`,
        `scope_remote`,
        `scope_ticket_num`,
        `rfs_status`,
        `active`,
        `approval_num`
        )
        (
        select 
        `rfs_request_id`,
        `created`,
        `domain_id`,
        `last_updated`,
        `last_updated_by`,
        `current_project_status`,
        `qa_spoc`,
        `kickoff_date`,
        `repository`,
        `repository_access`,
        `alm_jira_link`,
        `project_id`,
        `project_name`,
        `category`,
        `requester_name`,
        `requester_email`,
        `requester_role`,
        `pm`,
        `PoM`,
        `dir_it`,
        `project_poc`,
        `project_type`,
        `project_size`,
        `tentative_prep_start`,
        `tentative_prep_end`,
        `tentative_plan_start`,
        `tentative_plan_end`,
        `tentative_exec_start`,
        `tentative_exec_end`,
        `tentative_close_start`,
        `tentative_close_end`,
        `project_description`,
        `qa_coe_lead`,
        `confidential`,
        `confidential_alt_name`,
        `confidential_doc_share_method`,
        `pii_bsi`,
        `pii_bsi_description`,
        `scope_remote`,
        `scope_ticket_num`,
        `rfs_status`,
        `active`,
        %(approval_num)s
        from qagile_rfs_request
        where rfs_request_id = %(rfs_request_id)s
        )
    """

    sql2 = """
        INSERT INTO `qagile_rfs_request_scope_approved`
        (
        `rfs_request_id`,
        `service`,
        `include`,
        `startdate`,
        `enddate`,
        `comment`,
        `scope_id`,
        `seq`,
        `approval_num`)
        (
        select 
         `rfs_request_id`,
        `service`,
        `include`,
        `startdate`,
        `enddate`,
        `comment`,
        `scope_id`,
        `seq`,
        %(approval_num)s
        from qagile_rfs_request_scope
        where rfs_request_id = %(rfs_request_id)s
        )
    """

    sql3 = """
        INSERT INTO `qagile_rfs_resourceLoading_approved`
        (
        `rfs_request_id`,
        `person_id`,
        `week`,
        `hrs`,
        `created_dt`,
        `approval_num`)
        (
        select
            `rfs_request_id`,
        `person_id`,
        `week`,
        `hrs`,
        `created_dt`,
        %(approval_num)s
        from qagile_rfs_resourceLoading
        where rfs_request_id = %(rfs_request_id)s
        )
    """

    sql4 = """
        INSERT INTO `qagile_rfs_resourceLoading_weeks_approved`
        (

        `rfs_request_id`,
        `weekstart`,
        `numofweeks`,
        `approval_num`)
        (
        select 

        `rfs_request_id`,
        `weekstart`,
        `numofweeks`,
        %(approval_num)s
        from qagile_rfs_resourceLoading_weeks
        where rfs_request_id = %(rfs_request_id)s
        )
    """

    sql5 = """
            INSERT INTO `qagile_person_rate_approved`
            (
                `personid`,
                `rate`,
                `approval_num`,
                `rfs_request_id`
            )
            (
                select distinct rl.person_id, pr.rate, '""" + str(approval_num) + """', '""" + str(rfs_request_id) + """'
                from qagile_rfs_resourceLoading rl, qagile_person_rate pr, qagile_person p  
                where 
                rl.person_id = p.vnid
                and p.rate_id = pr.rate_id
                and rl.rfs_request_id=%(rfs_request_id)s
            )
        """

    sql6 = """
            INSERT INTO `qagile_rfs_estimates_approved`
            (
            `rfs_request_id`,
            `activity_code`,
            `effort`,
            `unit`,
            `comment`,
            `approval_num`)
            (
                select
                `rfs_request_id`,
                `activity_code`,
                `effort`,
                `unit`,
                `comment`,
                %(approval_num)s
                from qagile_rfs_estimates
                where rfs_request_id = %(rfs_request_id)s
            )
    """

    sql7 = """  
        INSERT INTO `qagile`.`qagile_rfs_estimates_raci_approved`
        (
        `rfs_request_id`,
        `raci_code`,
        `raci_scope`,
        `p_or_q`,
        `RACI`,
        `approval_num`)
        (
            select 
            `rfs_request_id`,
            `raci_code`,
            `raci_scope`,
            `p_or_q`,
            `RACI`,
            %(approval_num)s
            from qagile_rfs_estimates_raci
            where rfs_request_id = %(rfs_request_id)s
        )   
    """

    sql8 = """
        INSERT INTO `qagile`.`qagile_rfs_estimates_raci_head_approved`
        (
        `rfs_request_Id`,
        `SITRole`,
        `SITScope`,
        `UATRole`,
        `UATScope`,
        `total_qa_comments`,
        `approval_num`)
        (
            select
            `rfs_request_Id`,
            `SITRole`,
            `SITScope`,
            `UATRole`,
            `UATScope`,
            `total_qa_comments`,
            %(approval_num)s
            from qagile_rfs_estimates_raci_head
            where rfs_request_id = %(rfs_request_id)s
        )
    """

    with connection.cursor() as cursor:
        cursor.execute(sql1, fields)
        cursor.execute(sql2, fields)
        cursor.execute(sql3, fields)
        cursor.execute(sql4, fields)
        cursor.execute(sql5, fields)
        cursor.execute(sql6, fields)
        cursor.execute(sql7, fields)
        cursor.execute(sql8, fields)
        cursor.close()

    return 1


def get_rfs_request(rfs_request_id):

    if not len(str(rfs_request_id)):
        rfs_request_id = None

    sql = "select * from qagile_rfs_request where active = 1 and rfs_request_id = %(rfs_request_id)s"
    print(sql)
    with connection.cursor() as cursor:
        cursor.execute(sql, {'rfs_request_id': rfs_request_id})
        data = dict_fetchall(cursor)
        cursor.close()

    return data


def get_rfs_request_scope(rfs_request_id):

    if not len(str(rfs_request_id)):
        rfs_request_id = None

    sql = """
            select * from qagile_rfs_request_scope
            where rfs_request_id = %(rfs_request_id)s
            order by seq asc
            """

    print(sql)
    with connection.cursor() as cursor:
        cursor.execute(sql, {'rfs_request_id': rfs_request_id})
        data = dict_fetchall(cursor)
        cursor.close()

    return data


def get_rfs_resourceLoading(rfs_request_id):
    if not len(str(rfs_request_id)):
        rfs_request_id = None

    sql = """
            select concat(p.first_name, " ", p.last_name) as name, 
            (case when loc.country = 'USA' then 'Onsite' else 'Offshore' end) as loc,
            IFNULL(dom_name.domain_name,'') as domain_name, 
            IFNULL(ro.role,'') as role, 
            cast(IFNULL(r.rate,0) as char) as rate,
            rl.rfs_request_id, rl.person_id, date_format(rl.week,'%%Y-%%m-%%d') as week, rl.hrs
            from 
            qagile_rfs_resourceLoading rl join qagile_person p on p.vnid = rl.person_id 
            left join qagile_person_location loc on p.location_id = loc.location_id
            left join qagile_person_rate r on r.rate_id = p.rate_id
            left join qagile_person_role ro on ro.role_id = p.role_id
            left join (select dt.vnid, group_concat(d.domain_name) as domain_name from qagile_domains_team dt
            left join qagile_domains d on d.domain_id = dt.domain_id
            group by dt.vnid)  dom_name on dom_name.vnid = p.vnid
            where rl.rfs_request_id = %(rfs_request_id)s """

    sqlhead = """
                select rfs_request_id, date_format(weekstart,'%%Y-%%m-%%d') as weekstart, numofweeks  from qagile_rfs_resourceLoading_weeks
                where rfs_request_id = %(rfs_request_id)s"""
    print(sql)
    print(sqlhead)
    print(rfs_request_id)
    with connection.cursor() as cursor:
        cursor.execute(sql, {'rfs_request_id': rfs_request_id})
        datadetails = dict_fetchall(cursor)
        cursor.close()

    with connection.cursor() as cursor:
        cursor.execute(sqlhead, {'rfs_request_id': rfs_request_id})
        datahead = dict_fetchall(cursor)
        cursor.close()

    if not datahead:
        datahead = [{'rfs_request_id': rfs_request_id, 'weekstart': '', 'numofweeks': 0}]

    data = {
        'datadetails': datadetails,
        'datahead': datahead
    }

    return data


def get_rfs_estimates(rfs_request_id):
    if not len(str(rfs_request_id)):
        rfs_request_id = None

    fields = {'rfs_request_id': rfs_request_id}

    sql = """SELECT
        `qagile_rfs_estimates`.`record_id`,
    `qagile_rfs_estimates`.`rfs_request_id`,
    `qagile_rfs_estimates`.`activity_code`,
    ifnull(`qagile_rfs_estimates`.`effort`,0) as effort,
    `qagile_rfs_estimates`.`unit`,
    `qagile_rfs_estimates`.`comment`
     FROM qagile_rfs_estimates where rfs_request_id=%(rfs_request_id)s"""

    print(sql)

    with connection.cursor() as cursor:
        cursor.execute(sql, fields)
        data = dict_fetchall(cursor)
        cursor.close()

    return data


def get_rfs_estimates_raci_head(rfs_request_id):
    if not len(str(rfs_request_id)):
        rfs_request_id = None

    fields = {'rfs_request_id': rfs_request_id}

    sql = "SELECT * FROM qagile_rfs_estimates_raci_head where rfs_request_id=%(rfs_request_id)s"

    print(sql)

    with connection.cursor() as cursor:
        cursor.execute(sql, fields)
        data = dict_fetchall(cursor)
        cursor.close()

    return data


def get_rfs_estimates_raci(rfs_request_id):
    if not len(str(rfs_request_id)):
        rfs_request_id = None

    fields = {'rfs_request_id': rfs_request_id}

    sql = "SELECT * FROM qagile_rfs_estimates_raci where rfs_request_id= %(rfs_request_id)s"

    print(sql)

    with connection.cursor() as cursor:
        cursor.execute(sql, fields)
        data = dict_fetchall(cursor)
        cursor.close()

    return data


def get_res_load_static(rfs_request_id):
    if not len(str(rfs_request_id)):
        rfs_request_id = None
    sql = """
                select distinct concat(p.first_name, " ", p.last_name) as name, 
                (case when loc.country = 'USA' then 'Onsite' else 'Offshore' end) as loc,
                IFNULL(dom_name.domain_name,'') as domain_name, 
                IFNULL(ro.role,'') as role,
                cast(IFNULL(r.rate,0) as char) as rate,
                rl.rfs_request_id, rl.person_id
                from 
                qagile_rfs_resourceLoading rl join qagile_person p on p.vnid = rl.person_id 
                left join qagile_person_location loc on p.location_id = loc.location_id
                left join qagile_person_rate r on r.rate_id = p.rate_id
                left join qagile_person_role ro on ro.role_id = p.role_id
                left join (select dt.vnid, group_concat(d.domain_name) as domain_name from qagile_domains_team dt
                left join qagile_domains d on d.domain_id = dt.domain_id
                group by dt.vnid)  dom_name on dom_name.vnid = p.vnid
                where rl.rfs_request_id = %(rfs_request_id)s """

    with connection.cursor() as cursor:
        cursor.execute(sql, {'rfs_request_id': rfs_request_id})
        data = dict_fetchall(cursor)
        cursor.close()

    return data


def get_rfs_totals(rfs_request_id):
    if not len(str(rfs_request_id)):
        rfs_request_id = None

    sql = """
            select rl.rfs_request_id, ifnull(sum(rl.hrs),0) as rfs_total_hrs, ifnull(sum(rate.rate*rl.hrs),0) 
            as total_qa_cost from 
            qagile_rfs_resourceLoading rl
            left join (
            SELECT p.vnid, pr.rate FROM qagile_person p left join qagile_person_rate pr on p.rate_id = pr.rate_id
            ) rate 
            on rl.person_id = rate.vnid
            where rl.rfs_request_id=%(rfs_request_id)s
            group by rl.rfs_request_id
    """

    print(sql)

    with connection.cursor() as cursor:
        cursor.execute(sql, {'rfs_request_id': rfs_request_id})
        data = dict_fetchall(cursor)
        cursor.close()

    return data


def get_approval_num(rfs_request_id):
    sql = """SELECT count(*)+1 as approval_num FROM qagile.qagile_rfs_request_approved 
        where rfs_request_id = %(rfs_request_id)s"""

    approval_num = 1

    with connection.cursor() as cursor:
        cursor.execute(sql, {'rfs_request_id': rfs_request_id})
        data = dict_fetchall(cursor)
        cursor.close()
        approval_num = data[0]['approval_num']

    return approval_num


def get_domains_info():
    sql = """
            SELECT `qagile_v_domain_info`.`domain_name`,
            `qagile_v_domain_info`.`domain_id`,
            GROUP_CONCAT(`qagile_v_domain_info`.`pom_first_name`) pom_first_name,
            GROUP_CONCAT(`qagile_v_domain_info`.`pom_last_name`) pom_last_name,
            GROUP_CONCAT(`qagile_v_domain_info`.`pom_vnid`) pom_vnid,
            GROUP_CONCAT(`qagile_v_domain_info`.`dl_first_name`) dl_first_name,
            GROUP_CONCAT(`qagile_v_domain_info`.`dl_last_name`) dl_last_name,
            GROUP_CONCAT(`qagile_v_domain_info`.`dl_vnid`) dl_vnid
        FROM `qagile_v_domain_info`
        group by `qagile_v_domain_info`.`domain_name`,
            `qagile_v_domain_info`.`domain_id`
    """

    with connection.cursor() as cursor:
        cursor.execute(sql)
        data = dict_fetchall(cursor)
        cursor.close()

    return data


def get_projects_domains():
    sql = """
            select rfs.project_id, rfs.project_name, rfs.domain_id, rfs.rfs_request_id ,
            d.domain_name, d.domain_id
            from qagile_rfs_request rfs 
            left join qagile_domains d on rfs.domain_id = d.domain_id
            where rfs.project_id is not null
    """

    with connection.cursor() as cursor:
        cursor.execute(sql)
        data = dict_fetchall(cursor)
        cursor.close()

    return data


def get_approved_rfs(rfs_request_id):
    sql = """
       select r.rfs_request_id, r.approval_date, t.rfs_total_hrs, t.total_qa_cost, r.approval_num
        from qagile_rfs_request_approved r left join qagile_rfs_totals t 
        on r.rfs_request_id = t.rfs_request_id where r.rfs_request_id=%(rfs_request_id)s
        and r.approval_num=t.approval_num
        order by r.approval_num
    """

    with connection.cursor() as cursor:
        cursor.execute(sql, {'rfs_request_id': rfs_request_id})
        data = dict_fetchall(cursor)
        cursor.close()

    return data


def get_approved_rfs_request(rfs_request_id, approval_num):

    if not len(str(rfs_request_id)):
        rfs_request_id = None

    fields = {'rfs_request_id': rfs_request_id, 'approval_num': approval_num}

    sql = """select * from qagile_rfs_request_approved where active = 1 and rfs_request_id = %(rfs_request_id)s 
            and approval_num=%(approval_num)s"""

    print(sql)
    with connection.cursor() as cursor:
        cursor.execute(sql, fields)
        data = dict_fetchall(cursor)
        cursor.close()

    return data


def get_approved_rfs_request_scope(rfs_request_id, approval_num):

    if not len(str(rfs_request_id)):
        rfs_request_id = None

    fields = {'rfs_request_id': rfs_request_id, 'approval_num': approval_num}

    sql = """
            select * from qagile_rfs_request_scope_approved
            where rfs_request_id = %(rfs_request_id)s and approval_num=%(approval_num)s
            order by seq asc
            """

    print(sql)
    with connection.cursor() as cursor:
        cursor.execute(sql, fields)
        data = dict_fetchall(cursor)
        cursor.close()

    return data


def get_approved_rfs_resourceLoading(rfs_request_id, approval_num):
    if not len(str(rfs_request_id)):
        rfs_request_id = None

    fields = {'rfs_request_id': rfs_request_id, 'approval_num': approval_num}

    sql = """
            select concat(p.first_name, " ", p.last_name) as name, 
            (case when loc.country = 'USA' then 'Onsite' else 'Offshore' end) as loc,
            IFNULL(dom_name.domain_name,'') as domain_name, 
            IFNULL(ro.role,'') as role, 
            cast(IFNULL(r.rate,0) as char) as rate,
            rl.rfs_request_id, rl.person_id, date_format(rl.week,'%%Y-%%m-%%d') as week, rl.hrs
            from 
            qagile_rfs_resourceLoading_approved rl join qagile_person p on p.vnid = rl.person_id 
            left join qagile_person_location loc on p.location_id = loc.location_id
            left join qagile_person_rate_approved r on r.personid = rl.person_id 
            left join qagile_person_role ro on ro.role_id = p.role_id
            left join (select dt.vnid, group_concat(d.domain_name) as domain_name from qagile_domains_team dt
            left join qagile_domains d on d.domain_id = dt.domain_id
            group by dt.vnid)  dom_name on dom_name.vnid = p.vnid
            where rl.rfs_request_id = %(rfs_request_id)s and rl.approval_num=%(approval_num)s
            and r.rfs_request_id = %(rfs_request_id)s
            and r.approval_num = %(approval_num)s
            """

    sqlhead = """
                select rfs_request_id, date_format(weekstart,'%%Y-%%m-%%d') as weekstart, numofweeks  
                from qagile_rfs_resourceLoading_weeks_approved
                where rfs_request_id = %(rfs_request_id)s and approval_num=%(approval_num)s"""
    print(sql)
    print(sqlhead)
    print(rfs_request_id)
    with connection.cursor() as cursor:
        cursor.execute(sql, fields)
        datadetails = dict_fetchall(cursor)
        cursor.close()

    with connection.cursor() as cursor:
        cursor.execute(sqlhead, fields)
        datahead = dict_fetchall(cursor)
        cursor.close()

    if not datahead:
        datahead = [{'rfs_request_id': rfs_request_id, 'weekstart': '', 'numofweeks': 0}]

    data = {
        'datadetails': datadetails,
        'datahead': datahead
    }

    return data


def get_approved_rfs_estimates(rfs_request_id, approval_num):
    if not len(str(rfs_request_id)):
        rfs_request_id = None

    fields = {'rfs_request_id': rfs_request_id, 'approval_num': approval_num}

    sql = """SELECT * FROM qagile_rfs_estimates_approved where rfs_request_id= %(rfs_request_id)s and 
            approval_num=%(approval_num)s"""

    print(sql)

    with connection.cursor() as cursor:
        cursor.execute(sql, fields)
        data = dict_fetchall(cursor)
        cursor.close()

    return data


def get_approved_rfs_estimates_raci_head(rfs_request_id, approval_num):
    if not len(str(rfs_request_id)):
        rfs_request_id = None

    fields = {'rfs_request_id': rfs_request_id, 'approval_num': approval_num}

    sql = """SELECT * FROM qagile_rfs_estimates_raci_head_approved where rfs_request_id=%(rfs_request_id)s 
            and approval_num= %(approval_num)s"""

    print(sql)

    with connection.cursor() as cursor:
        cursor.execute(sql, fields)
        data = dict_fetchall(cursor)
        cursor.close()

    return data


def get_approved_rfs_estimates_raci(rfs_request_id, approval_num):
    if not len(str(rfs_request_id)):
        rfs_request_id = None

    fields = {'rfs_request_id': rfs_request_id, 'approval_num': approval_num}

    sql = """SELECT * FROM qagile_rfs_estimates_raci_approved where rfs_request_id=%(rfs_request_id)s 
            and approval_num= %(approval_num)s"""

    print(sql)

    with connection.cursor() as cursor:
        cursor.execute(sql, fields)
        data = dict_fetchall(cursor)
        cursor.close()

    return data


def get_approved_rfs_totals(rfs_request_id, approval_num):
    if not len(str(rfs_request_id)):
        rfs_request_id = None

    fields = {'rfs_request_id': rfs_request_id, 'approval_num': approval_num}

    sql = """
            select rl.rfs_request_id, sum(rl.hrs) as rfs_total_hrs, sum(pr.rate*rl.hrs) as total_qa_cost from 
            qagile_rfs_resourceLoading_approved rl
            left join qagile_person_rate_approved pr 
            on pr.personid = rl.person_id and pr.rfs_request_id = rl.rfs_request_id
            and pr.approval_num = rl.approval_num
            where rl.rfs_request_id=%(rfs_request_id)s and rl.approval_num=%(approval_num)s
            group by rl.rfs_request_id
    """

    print(sql)

    with connection.cursor() as cursor:
        cursor.execute(sql, fields)
        data = dict_fetchall(cursor)
        cursor.close()

    return data


def get_approved_res_load_static(rfs_request_id, approval_num):
    if not len(str(rfs_request_id)):
        rfs_request_id = None

    fields = {'rfs_request_id': rfs_request_id, 'approval_num': approval_num}

    sql = """
                select distinct concat(p.first_name, " ", p.last_name) as name, 
                (case when loc.country = 'USA' then 'Onsite' else 'Offshore' end) as loc,
                IFNULL(dom_name.domain_name,'') as domain_name, 
                IFNULL(ro.role,'') as role,
                cast(IFNULL(r.rate,0) as char) as rate,
                rl.rfs_request_id, rl.person_id
                from 
                qagile_rfs_resourceLoading_approved rl join qagile_person p on p.vnid = rl.person_id 
                left join qagile_person_location loc on p.location_id = loc.location_id
                left join qagile_person_rate_approved r on r.personid = rl.person_id 
                left join qagile_person_role ro on ro.role_id = p.role_id
                left join (select dt.vnid, group_concat(d.domain_name) as domain_name from qagile_domains_team dt
                left join qagile_domains d on d.domain_id = dt.domain_id
                group by dt.vnid)  dom_name on dom_name.vnid = p.vnid
                where rl.rfs_request_id = %(rfs_request_id)s and rl.approval_num= %(approval_num)s
                and r.rfs_request_id = %(rfs_request_id)s
                and r.approval_num = %(approval_num)s
            """

    with connection.cursor() as cursor:
        cursor.execute(sql, fields)
        data = dict_fetchall(cursor)
        cursor.close()

    return data


def set_rfs_status(rfs_request_id, rfs_status_quoted):

    fields = {
        'rfs_request_id': rfs_request_id,
        'rfs_status_quoted': rfs_status_quoted
    }

    sql = "update qagile_rfs_request set rfs_status = %(rfs_status_quoted)s where rfs_request_id = %(rfs_request_id)s"
    print(sql)

    with connection.cursor() as cursor:
        cursor.execute(sql, fields)
        cursor.close()

    sql_wf_log(rfs_request_id, rfs_status_quoted)

    if rfs_status_quoted == 'APPROVED':
        create_approved_copy(rfs_request_id)

    return 1


def sql_wf_log(rfs_request_id, rfs_status_quoted):

    fields = {
        'rfs_request_id': rfs_request_id,
        'rfs_status_quoted': rfs_status_quoted
    }
    sql_wf = """insert into qagile_rfs_wf_log (rfs_request_id,rfs_status)
                        values (%(rfs_request_id)s,%(rfs_status_quoted)s)
                        """
    print(sql_wf, fields)
    with connection.cursor() as cursor:
        cursor.execute(sql_wf, fields)
        cursor.close()

    return 1
