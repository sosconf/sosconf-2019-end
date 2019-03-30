def get_cas_userinfo(login_ticket : str, cas_url='https://my.hexang.com/cas', verify_url = 'http://api.sosconf.org/cas_proc'):
    """
    获取CAS登陆的用户信息.

    :param login_ticket: 登陆票据

    :param cas_url: cas认证接口地址

    :param verify_url: 登录时提供的验证路由`login?service={verify_url}`

    :return: userinfo_json
    """
    import requests
    import urllib.parse
    service_encode = urllib.parse.urlencode({'service' : verify_url})
    url = '{cas_url}/serviceValidate?{service_encode}&ticket={ticket}&format=json'.format(
        cas_url = cas_url,
        service_encode = service_encode,
        ticket = login_ticket
    )
    return requests.request('GET', url).json()