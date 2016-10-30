# coding=utf-8
from django.shortcuts import render_to_response, RequestContext
from django.http import HttpResponse, JsonResponse
from start.public import login_valid, is_exsit, get_json_menu
from system.models import Users, Roles, Position, Department, Menus
import hashlib
import json
from django.views.decorators.csrf import csrf_exempt


# 用户管理页面
@login_valid
def users(request):
    pos = get_position()
    role = get_role()
    return render_to_response('system/system_users.html', RequestContext(request, locals()))


# 角色管理页面
@login_valid
def roles(request):
    return render_to_response('system/system_role.html', RequestContext(request, locals()))


# 部门管理页面
@login_valid
def dept(request):
    return render_to_response('system/system_dept.html', RequestContext(request, locals()))


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
    new_pwd2 = request.POST['rpwd2']
    loginChPwd = request.POST.get('rloginChPwd', 1)
    if new_pwd != new_pwd2:
        return HttpResponse("两次输入的密码不一致")
    if new_pwd == "" or new_pwd2 == "" or len(new_pwd) < 6 or len(new_pwd2) < 6:
        return HttpResponse("密码不能为空且密码长度不能低于6个字符")
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
    new_pwd = request.POST['fpwd']
    new_pwd2 = request.POST['fpwd2']
    dept = request.POST['fdept']
    if dept != "":
        dept = Department.objects.get(id=dept, dept_delflag=0).dept_name
    position = request.POST['fposition']
    role = request.POST['frole']
    tel = request.POST.get('ftel', '')
    mail = request.POST.get('fmail', '')
    loginChPwd = request.POST.get('floginChPwd', 1)
    if account == "":
        return HttpResponse("账户不能为空")
    try:
        Users.objects.get(u_account=account)
        return HttpResponse("该用户已被占用")
    except:
        pass
    if username == "" or len(username) < 2 or len(username) > 5:
        return HttpResponse("姓名不能为空且字段长度在2到5之间")
    if new_pwd == "" or new_pwd2 == "" or len(new_pwd) < 6 or len(new_pwd2) < 6:
        return HttpResponse("密码不能为空且密码长度不能低于6个字符")
    if new_pwd != new_pwd2:
        return HttpResponse("两次输入的密码不一致")
    if dept == "":
        return HttpResponse("部门不能为空")
    if role == "":
        return HttpResponse("角色不能为空")
    if tel != "" and len(tel) != 11:
        return HttpResponse("请输入有效的手机号码")
    try:
        if tel != "":
            int(tel)
    except:
        return HttpResponse("请输入有效的手机号码")
    if mail != "" and (mail.find('@') == -1 or mail.find('.') == -1):
        return HttpResponse("请输入有效的邮箱")
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
    if dept != "":
        dept = Department.objects.get(id=dept, dept_delflag=0).dept_name
    position = request.POST['eposition']
    role = request.POST['erole']
    tel = request.POST.get('etel', '')
    mail = request.POST.get('email', '')
    if username == "" or len(username) < 2 or len(username) > 5:
        return HttpResponse("姓名不能为空且字段长度在2到5之间")
    if dept == "":
        return HttpResponse("部门不能为空")
    if role == "":
        return HttpResponse("角色不能为空")
    if tel != "" and len(tel) != 11:
        return HttpResponse("请输入有效的手机号码")
    try:
        if tel != "":
            int(tel)
    except:
        return HttpResponse("请输入有效的手机号码")
    if mail != "" and (mail.find('@') == -1 or mail.find('.') == -1):
        return HttpResponse("请输入有效的邮箱")
    try:
        user = Users.objects.get(u_account=account)
        user.u_userName = username
        user.u_dept = dept
        user.u_position = position
        user.u_tel = tel
        user.u_email = mail
        user.u_role = Roles.objects.get(r_name=role)
        user.save()
        return HttpResponse('success')
    except:
        return HttpResponse('添加用户失败')


# 添加部门
@csrf_exempt
@login_valid
def add_dept(request):
    pass


# 删除部门
@csrf_exempt
@login_valid
def remove_dept(request):
    id = request.GET.get('id')
    if id != "":
        dept = Department.objects.filter(dept_parentID=id, dept_delflag=0)
        print dept.count()
        if dept.count() > 0:
            return HttpResponse("请先删除子部门")
        else:
            try:
                Department.objects.filter(id=id, dept_delflag=0).update(dept_delflag=1)
                return HttpResponse("已删除")
            except:
                return HttpResponse("删除失败")
    return HttpResponse("没有获取到ID")


# 获取编辑部门
@csrf_exempt
@login_valid
def edit_dept(request):
    pass


# 拖拽更新部门
@csrf_exempt
@login_valid
def update_dept(request):
    id = request.GET.get('id')
    parent_id = request.GET.get('parent_id', 0)
    if id != "" or parent_id != "":
        try:
            Department.objects.filter(id=id, dept_delflag=0).update(dept_parentID=parent_id)
            return HttpResponse("更新成功")
        except:
            return HttpResponse("更新失败")
    return HttpResponse("没有获取到ID")


# 部门详细信息
@csrf_exempt
@login_valid
def showdetail_dept(request):
    id = request.GET.get('id')
    if id != "":
        try:
            dept = Department.objects.get(id=id, dept_delflag=0)
            if dept.dept_parentID != 0:
                p_dept = Department.objects.get(id=dept.dept_parentID, dept_delflag=0)
                d = {'id': dept.id, 'name': dept.dept_name, 'parentid': p_dept.id, 'parent': p_dept.dept_name,
                     'order': dept.dept_order}
            else:
                d = {'id': dept.id, 'name': dept.dept_name, 'parentid': -1, 'parent': '---', 'order': dept.dept_order}
            return JsonResponse(d)
        except:
            return HttpResponse("false")
    return HttpResponse("false")


# dept
# 保存编辑 和新增数据
@csrf_exempt
@login_valid
def save_update_dept(request):
    if request.method == "POST":
        id = request.POST.get('fid', '')
        name = request.POST.get('fdept', '')
        if name == "":
            return HttpResponse("部门名称不能为空")
        parent = request.POST['fparent']
        if parent == "":
            return HttpResponse("父节点不能为空")
        order = request.POST.get('forder', '')
        if order == "":
            order = 9999
        if id == "":
            valid_dept = Department.objects.filter(dept_parentID=parent)
            for v_d in valid_dept:
                if v_d.dept_name == name:
                    return HttpResponse("同级目录下该部门已存在，请更换后重新提交")
            dept = Department()
            dept.dept_name = name
            dept.dept_parentID = parent
            dept.dept_order = order
            try:
                dept.save()
                return HttpResponse("添加成功")
            except:
                return HttpResponse("添加失败")
        else:
            dept = Department.objects.get(id=id, dept_delflag=0)
            dept.dept_name = name
            dept.dept_parentID = parent
            dept.dept_order = order
            try:
                dept.save()
                return HttpResponse("更新成功")
            except:
                return HttpResponse("更新失败")


# 加载角色组数据内容
@login_valid
def get_roles(request):
    role = Roles.objects.filter(r_delflag=0).order_by('id')
    json_items = []
    for r in role:
        auth = list(r.r_authority)
        auth = filter(remove_char, auth)
        json_items.append({
            'id': r.id,
            'text': r.r_name,
            'auth': auth,
            'desc': r.r_description
        })
        print auth
    json_items = json.dumps(json_items)
    return HttpResponse(json_items)


def remove_char(n):
    if n != ",":
        return True
    return False


# role
# 保存编辑 和新增数据
@login_valid
def save_update_role(request):
    if request.method == "POST":
        id = request.POST.get('rid', '')
        name = request.POST.get('rname', '')
        if name == "":
            return HttpResponse("角色名称不能为空")
        auth = request.POST.getlist('rauth')
        auth = ','.join(auth)
        print auth
        if auth == "":
            return HttpResponse("权限不能为空")
        desc = request.POST.get('rdesc', '')
        if id == "":
            try:
                Roles.objects.get(r_name=name)
                return HttpResponse("角色名称已存在，请重新填写")
            except:
                pass
            role = Roles()
            role.r_name = name
            role.r_authority = auth
            role.r_description = desc
            try:
                role.save()
                return HttpResponse("添加成功")
            except:
                return HttpResponse("添加失败")
        else:
            role = Roles.objects.get(id=id, r_delflag=0)
            role.r_name = name
            role.r_authority = auth
            role.r_description = desc
            try:
                role.save()
                return HttpResponse("更新成功")
            except:
                return HttpResponse("更新失败")


# 删除角色
@login_valid
def remove_role(request):
    id = request.GET.get('id', '')
    if id != "":
        try:
            Roles.objects.filter(id=id, r_delflag=0).update(r_delflag=1)
            return HttpResponse('删除成功')
        except:
            return HttpResponse('删除失败')

# menu
def get_menus(request):
    menus = json.dumps(get_json_menu())
    return HttpResponse(menus)


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
    if account != "":
        if is_exsit(account):
            return HttpResponse("true")
        return HttpResponse("false")


# 验证角色名称是否存在
@login_valid
def check_role_exsit(request):
    name = request.GET.get('name')
    if name != "":
        try:
            Roles.objects.get(r_name=name)
            return HttpResponse("true")
        except:
            return HttpResponse("false")