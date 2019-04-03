from django.views.decorators.http import require_http_methods
from django.shortcuts import redirect
from django.http import HttpResponse
from .utils import get_cas_userinfo
from .utils import is_cas_login


def login(request):
    cas_url = 'https://my.hexang.com/cas'
    verify_url = 'http://api.sosconf.org/cas_proc'
    return redirect('{cas_url}/login?service={verify_url}'.format(
        cas_url=cas_url, verify_url=verify_url))


def register(request):
    register_url = 'https://my.hexang.com/register'
    return redirect('{register_url}'.format(register_url=register_url))


def logout(request):
    cas_url = 'https://my.hexang.com/cas'
    return redirect('{cas_url}/logout'.format(cas_url=cas_url))


@require_http_methods(['GET', 'POST'])
def cas_proc(request):
    cas_ticket = None
    if request.method == 'GET':
        cas_ticket = request.GET.get('ticket')
        userinfo = get_cas_userinfo(cas_ticket)
        HttpResponse.setdefault("ticket", cas_ticket)
        # print(userinfo['serviceResponse']['authenticationSuccess']['user'])
        return redirect(
            '{sosconf_url}'.format(sosconf_url="https://sosconf.org"))
    elif request.method == 'POST':
        cas_json = request.POST
        if cas_json.get('logoutRequest'):
            # print('Logout')
            return redirect(
                '{sosconf_url}'.format(sosconf_url="https://sosconf.org"))


@require_http_methods(['GET'])
def user_ticket(request):
    cas_ticket = None
    if request.method == 'GET':
        cas_ticket = request.GET.get('ticket')
        is_ticket_validity = is_cas_login(cas_ticket)

        if is_ticket_validity:
            return HttpResponse('valid')
        return HttpResponse('valid error')
