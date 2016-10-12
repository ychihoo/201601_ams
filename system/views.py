# coding=utf-8
from django.shortcuts import render, render_to_response, RequestContext
from django.http import HttpResponse, JsonResponse
import hashlib
from start.public import login_valid
from system.models import *

# Create your views here.

@login_valid
def users(request):
    pos = get_position()
    role = get_role()
    return render_to_response('system/system_users.html', locals())

@login_valid
def ajax_users(request):
    dept = request.GET.get('dept')
    account = request.GET.get('account')
    status = request.GET.get('status')
    u = Users.objects.filter(u_account__icontains=account, u_dept__icontains=dept).exclude(u_delflag=1)
    if status != '-1':
        u = Users.objects.filter(u_account__icontains=account, u_dept__icontains=dept, u_enabled=int(status)).exclude(u_delflag=1)
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


# 公共职位调用
def get_position():
    pos = Position.objects.filter(p_delflag=0).order_by('p_order')
    return pos


# 公共角色调用
def get_role():
    role = Roles.objects.filter(r_delflag=0)
    return role