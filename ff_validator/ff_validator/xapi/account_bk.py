from ..identity.views import dict_fetchall
from ..sapi.views import account

response = {"data": {}, 'status': 200}


def GET(request):
    response = account(request)

    return response
