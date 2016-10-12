# coding:utf-8
from django.http import HttpResponse, HttpResponseRedirect, HttpRequest
from django.shortcuts import render_to_response, RequestContext
from system.forms import *
from start.public import login_valid, save_to_log, valid_auth
from system.models import Users
import hashlib

# 全局变量用于传输session
# GET_SESSION = ''

# 登录
def login(request):
    if request.method == 'POST':
        login_form = loginForm(request.POST)
        if login_form.is_valid():
            user = login_form.get_user()
            request.session['account'] = user.u_account
            request.session['username'] = user.u_userName
            global GET_SESSION
            GET_SESSION = request.session.get('account', 'guest')
            save_to_log('登录成功', '登录')
            return HttpResponseRedirect('/')
    else:
        login_form = loginForm()
    return render_to_response('start/login.html', RequestContext(request, locals()))


# 首页
@login_valid
def index(request):
    # menus = Menus.objects.filter(m_delflag=0).order_by('m_order')
    menus = valid_auth(request.session.get('account'))
    u = request.session.get('username')
    return render_to_response('start/index.html', {'menus': menus, 'user': u})


def get_session(request):
    sess = request.session.get('account', 'guest')
    return sess


# 注销
@login_valid
def logout(request):
    if request.session.get('account'):
        del request.session['account']
    if request.session.get('username'):
        del request.session['username']
    return HttpResponse('ok')


# 更改密码
@login_valid
def chpwd(request):
    newpwd = request.GET.get('newpass')
    newpwd = hashlib.sha1(newpwd).hexdigest()
    account = request.session.get('account')
    user = Users.objects.get(u_account=account)
    user.u_pwd = newpwd
    user.save()
    return HttpResponse('ok')