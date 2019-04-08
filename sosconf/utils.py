import requests
import urllib.parse
import json


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
    service_encode = urllib.parse.urlencode({'service': verify_url})
    url = '{cas_url}/serviceValidate?{service_encode}&ticket={ticket}&format=json'.format(
        cas_url=cas_url, service_encode=service_encode, ticket=login_ticket)
    return requests.request('GET', url).json()


def is_cas_login(login_ticket: str, cas_url='https://my.hexang.com/cas'):
    """
    同CAS通讯, 验证ticket有效.

    :param login_ticket: 登录成功返回的ticket票据

    :param cas_url: cas认证接口地址

    :return: yes username or no
    """
    service_url = 'http://api.sosconf.org/cas_proc'
    service_encode = urllib.parse.urlencode({'service': service_url})
    url = '{cas_url}/validate?{service_encode}&ticket={ticket}'.format(
        cas_url=cas_url, service_encode=service_encode, ticket=login_ticket)

    is_login = requests.request('GET', url).text

    if len(is_login) > 1:
        if 'yes' in str(is_login)[:4]:
            return (True, str(is_login)[4:-1])
    return (False, "catone")


def request_photo_url(username, event="download"):
    """
    同AWS LAMBDA通讯, 获得用户头像的下载/上传地址.

    :param username: 用户名

    :param event: 请求事件(download/update)

    :return: url (avatar url)
    """

    service_url = 'https://adur8jfkj8.execute-api.ap-northeast-1.amazonaws.com/product/user-photo'

    post_json = {
        "event": {
            "event": event,
            "username": username,
            "endpoint": "avatar"
        }
    }
    try:
        result = requests.request(
            'POST', service_url, data=json.dumps(post_json)).text
    except:
        return "http://www.liberaldictionary.com/wp-content/uploads/2018/11/test-1.png"
    else:
        if 'err' in json.loads(result).keys():
            return json.loads(result)["event_url"]
        else:
            return "http://www.liberaldictionary.com/wp-content/uploads/2018/11/test-1.png"


# if __name__ == '__main__':
#     print(is_cas_login("sad"))
#     print(request_photo_url("catone"))
