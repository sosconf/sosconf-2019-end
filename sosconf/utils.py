def get_cas_userinfo(login_ticket: str,
                     cas_url='https://my.hexang.com/cas',
                     verify_url='http://api.sosconf.org/cas_proc'):
    """
    获取CAS登陆的用户信息.

    :param login_ticket: 登陆票据

    :param cas_url: cas认证接口地址

    :param verify_url: 登录时提供的验证路由`login?service={verify_url}`

    :return: userinfo_json
    """
    import requests
    import urllib.parse
    service_encode = urllib.parse.urlencode({'service': verify_url})
    url = '{cas_url}/serviceValidate?{service_encode}&ticket={ticket}&format=json'.format(
        cas_url=cas_url, service_encode=service_encode, ticket=login_ticket)
    return requests.request('GET', url).json()


def is_cas_login(login_ticket: str, cas_url='https://my.hexang.com/cas'):
    """
    同CAS通讯, 验证ticket有效.

    :param login_ticket: 登录成功返回的ticket票据

    :param cas_url: cas认证接口地址

    :return: yes username or no username
    """
    import requests
    import urllib.parse
    service_url = 'http://api.sosconf.org/cas_proc'
    service_encode = urllib.parse.urlencode({'service': service_url})
    url = '{cas_url}/validate?{service_encode}&ticket={ticket}'.format(
        cas_url=cas_url, service_encode=service_encode, ticket=login_ticket)

    is_login = requests.request('GET', url).text
    # if ' ' in is_login and len(is_login) > 1:
    #     if is_login.split(' ')[0] == 'yes':
    #         return True
    # return False
    return is_login.split(' ')[0]
