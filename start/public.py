# coding=utf-8
import socket
import uuid

from django.http import HttpResponse, HttpResponseRedirect
from django.utils import timezone
from PIL import Image

from system.models import Log, Users, Menus, Department
import views


# 登录验证
def login_valid(func):
    def isLogin(request, *args, **kwargs):
        if request.session.get('account'):
            # 加一个检查是否对该页面有访问权限
            # if get_auth_allow(request) == false:
            #     return HttpResponse('您没有权限访问此页面！',)
            # for meuns_url in valid_auth(request.session.get('account')):
            #     if get_root_url(request) != meuns_url.m_url:
            #         return HttpResponse('您没有权限访问此页面')
            return func(request)
        else:
            if get_root_url(request) != '/':
                return HttpResponse('您的session已过期，请刷新浏览器页面操作', )
            return HttpResponseRedirect('/login/')

    return isLogin


# 用户menu权限控制
def valid_auth(user_account):
    user = Users.objects.get(u_account=user_account)
    user_role_list = user.u_role.r_authority.split(',')
    user_menu = Menus.objects.filter(id__in=user_role_list).filter(m_delflag=0).order_by('m_order')
    return user_menu


# session
# def get_session():
#     sess=views.GET_SESSION
#     return  sess


# 获取url相对路径
def get_root_url(req):
    url = req.path
    return str(url)


# 获取时间
def get_local_datetime():
    return timezone.now()


# # 获取IP
def get_ip_address(request):
    # ip = socket.gethostbyname(socket.gethostname())
    ip = "0.0.0.0"
    return ip


# def get_ip_address(request):
#     if 'HTTP_X_FORWARDED_FOR' in request.META:
#         return request.META['HTTP_X_FORWARDED_FOR']
#     else:
#         return request.META['REMOTE_ADDR']

# 获取MAC地址
def get_mac_address():
    mac = uuid.UUID(int=uuid.getnode()).hex[-12:]
    return mac


# 获取主机名FQDN
def get_FQDN():
    hostname = socket.getfqdn(socket.gethostname())
    return hostname


# 日志记录到数据库
def save_to_log(request, log_content, log_action=None):
    content = str(log_content)
    action = str(log_action)
    operater = views.GET_SESSION
    time = get_local_datetime()
    ip = get_ip_address(request)
    fqdn = get_FQDN()
    mac = get_mac_address()
    log = Log()
    log.log_content = content
    log.log_action = action
    log.log_operater = operater
    log.log_time = time
    log.log_IP = ip
    log.log_fqdn = fqdn
    log.log_mac = mac
    log.save()
    update_user_log(request)


# 更新user表中最后一次登录的时间和IP
def update_user_log(request):
    user = Users.objects.get(u_account=views.GET_SESSION)
    user.u_lastIP = get_ip_address(request)
    user.u_lastLogin = get_local_datetime()
    user.save()


# 处理图片文件名
def change_pic_filename(filename, path):
    if filename:
        phototime = str(timezone.now()).replace(':', '').replace(' ', '').replace('-', '').replace('.', '')
        photo_last = str(filename).split('.')[-1]
        newfilename = path + phototime + '.' + photo_last
        img = Image.open(filename)
        img.save(newfilename)
        return newfilename
    return None


# 部门显示
def get_json_dept():
    dept = Department.objects.filter(dept_delflag=0).order_by('dept_parentID', 'dept_order')
    tree_root = Department.objects.filter(dept_delflag=0, dept_parentID=0)
    l = []
    dept_items = []
    if tree_root.count() > 0:
        loop_dept(dept, 0, l, dept_items)
    return dept_items


# 1.可实现部门多级遍历
def loop_dept(obj, parentID, l, dept_items):
    flag = 1
    for d in obj:
        if d.dept_parentID == parentID and d.id not in l:
            flag = 0
            l.append(d.id)
            dept_items.append({
                'id': d.id,
                # 'id': d.dept_name,
                'text': d.dept_name,
                'children': [],
            })
        if flag == 0:
            loop_dept2(obj, d.id, l, dept_items[len(dept_items) - 1])


# 2.可实现部门多级遍历
def loop_dept2(obj, parentID, l, dept_list):
    for d in obj:
        flag = 1
        if d.dept_parentID == parentID and d.id not in l:
            flag = 0
            l.append(d.id)
            dept_list['children'].append({
                'id': d.id,
                # 'id': d.dept_name,
                'text': d.dept_name,
                'children': [],
            })
        if flag == 0:
            loop_dept2(obj, d.id, l, dept_list['children'][len(dept_list['children']) - 1])


# menu显示
def get_json_menu():
    menu = Menus.objects.filter(m_delflag=0).order_by('m_parentID', 'm_order')
    tree_root = Menus.objects.filter(m_delflag=0, m_parentID=0)
    l = []
    menu_items = []
    if tree_root.count() > 0:
        loop_menu(menu, 0, l, menu_items)
    return menu_items


# 1.可实现菜单多级遍历
def loop_menu(obj, parentID, l, menu_items):
    flag = 1
    for d in obj:
        if d.m_parentID == parentID and d.id not in l:
            flag = 0
            l.append(d.id)
            menu_items.append({
                'id': d.id,
                'text': d.m_name,
                'children': [],
            })
        if flag == 0:
            loop_menu2(obj, d.id, l, menu_items[len(menu_items) - 1])


# 2.可实现菜单多级遍历
def loop_menu2(obj, parentID, l, menu_list):
    for d in obj:
        flag = 1
        if d.m_parentID == parentID and d.id not in l:
            flag = 0
            l.append(d.id)
            menu_list['children'].append({
                'id': d.id,
                'text': d.m_name,
                'children': [],
            })
        if flag == 0:
            loop_menu2(obj, d.id, l, menu_list['children'][len(menu_list['children']) - 1])


# 验证用户名是否存在
def is_exsit(str):
    try:
        Users.objects.get(u_account=str)
        return 0
    except:
        return 1
