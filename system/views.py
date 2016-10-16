# coding=utf-8
from django.shortcuts import render_to_response, RequestContext
from django.http import HttpResponse, JsonResponse, HttpRequest
from start.public import login_valid, is_exsit
from system.models import Users, Roles, Position
import hashlib
from django.views.decorators.csrf import csrf_exempt


@login_valid
def users(request):
    pos = get_position()
    role = get_role()
    return render_to_response('system/system_users.html', RequestContext(request, locals()))


# 查询用户生成json
@login_valid
def ajax_users(request):
    dept = request.GET.get('dept')
    account = request.GET.get('account')
    status = request.GET.get('status')
    u = Users.objects.filter(u_account__icontains=account, u_dept__icontains=dept).exclude(u_delflag=1)
    if status != '-1':
        u = Users.objects.filter(u_account__icontains=account, u_dept__icontains=dept, u_enabled=int(status)).exclude(
            u_delflag=1)
    json_item = {'total': u.count(), "rows": []}
    for d in u:
        if d.u_enabled == 0:
            d.u_enabled = '启用'
        else:
            d.u_enabled = '禁用'
        json_item['rows'].append({
            'account': d.u_account,
            'username': d.u_userName,
            'dept': d.u_dept,
            'position': d.u_position,
            'tel': d.u_tel,
            'email': d.u_email,
            'status': d.u_enabled,
            'lastlogin': str(d.u_lastLogin),
            'role': d.u_role.r_name,
            'lastIP': d.u_lastIP
        })
    return JsonResponse(json_item)


# 禁用账户
@login_valid
def ajax_disable_user(request):
    account = request.GET.get('user')
    try:
        Users.objects.filter(u_account=account).update(u_enabled=1)
        return HttpResponse('success')
    except:
        return HttpResponse('禁用失败')


# 启用账户
@login_valid
def ajax_enable_user(request):
    account = request.GET.get('user')
    try:
        Users.objects.filter(u_account=account).update(u_enabled=0)
        return HttpResponse('success')
    except:
        return HttpResponse('启用失败')


# 删除账户
@login_valid
def ajax_del_user(request):
    account = request.GET.get('user')
    try:
        Users.objects.filter(u_account=account).update(u_delflag=1)
        return HttpResponse('success')
    except:
        return HttpResponse('删除失败')


# 重置密码
@csrf_exempt
@login_valid
def post_resetPwd(request):
    account = request.POST['raccount']
    new_pwd = request.POST['rpwd']
    loginChPwd = request.POST.get('rloginChPwd', 1)
    new_pwd = hashlib.sha1(hashlib.md5(new_pwd).hexdigest()).hexdigest()
    try:
        Users.objects.filter(u_account=account).update(u_pwd=new_pwd, u_loginChPwd=loginChPwd)
        return HttpResponse('success')
    except:
        return HttpResponse('重置密码失败')


# 添加用户
@csrf_exempt
@login_valid
def post_addUser(request):
    account = request.POST['faccount']
    username = request.POST['fusername']
    new_pwd = request.POST['fpwd2']
    dept = request.POST['fdept']
    position = request.POST['fposition']
    role = request.POST['frole']
    tel = request.POST.get('ftel', '')
    mail = request.POST.get('fmail', '')
    loginChPwd = request.POST.get('floginChPwd', 1)
    new_pwd = hashlib.sha1(hashlib.md5(new_pwd).hexdigest()).hexdigest()
    try:
        user = Users()
        user.u_account = account
        user.u_pwd = new_pwd
        user.u_userName = username
        user.u_dept = dept
        user.u_position = position
        user.u_tel = tel
        user.u_email = mail
        user.u_loginChPwd = loginChPwd
        user.u_role_id = role
        user.save()
        return HttpResponse('success')
    except:
        return HttpResponse('添加用户失败')


# 编辑用户
@csrf_exempt
@login_valid
def post_editUser(request):
    account = request.POST['eaccount']
    username = request.POST['eusername']
    dept = request.POST['edept']
    position = request.POST['eposition']
    role = request.POST['erole']
    tel = request.POST.get('etel', '')
    mail = request.POST.get('email', '')
    try:
        user = Users.objects.get(u_account=account)
        user.u_userName = username
        user.u_dept = dept
        user.u_position = position
        user.u_tel = tel
        user.u_email = mail
        user.u_role_id = role
        user.save()
        return HttpResponse('success')
    except:
        return HttpResponse('添加用户失败')


# 公共职位调用
def get_position():
    pos = Position.objects.filter(p_delflag=0).order_by('p_order')
    return pos


# 公共角色调用
def get_role():
    role = Roles.objects.filter(r_delflag=0)
    return role


# 验证用户名会否被占用
@login_valid
def check_account_exsit(request):
    account = request.GET.get('user')
    if account !="":
        if is_exsit(account):
            return HttpResponse("true")
        return HttpResponse("false")