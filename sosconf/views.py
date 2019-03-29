from django.views.decorators.http import require_http_methods
from django.shortcuts import redirect
from django.http import HttpResponse
from .utils import get_cas_userinfo

def login(request):
    cas_url = 'https://my.hexang.com/cas'
    verify_url = 'http://newtorn.fastfuck.me/cas_proc'
    return redirect('{cas_url}/login?service={verify_url}'.format(
        cas_url = cas_url,
        verify_url = verify_url
    ))

def logout(request):
    cas_url = 'https://my.hexang.com/cas'
    return redirect('{cas_url}/logout'.format(cas_url = cas_url))

@require_http_methods(['GET','POST'])
def cas_proc(request):
    cas_ticket = None
    if request.method == 'GET':
        cas_ticket = request.GET.get('ticket')
        userinfo = get_cas_userinfo(cas_ticket)
        # print(userinfo['serviceResponse']['authenticationSuccess']['user'])
        return HttpResponse(str(userinfo))
    elif request.method == 'POST':
        cas_json = request.POST
        if cas_json.get('logoutRequest'):
            print('Logout')
            return HttpResponse('Logout')