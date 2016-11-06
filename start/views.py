# coding:utf-8
from django.http import HttpResponse, HttpResponseRedirect, HttpRequest
from django.shortcuts import render_to_response, RequestContext
from system.forms import *
from start.public import login_valid, save_to_log, valid_auth
from system.models import Users
import hashlib
import StringIO
from start import Checkcode
from django import forms


# 全局变量用于传输session
# GET_SESSION = ''


# 生成验证码链接
def CheckCode(request):
    mstream = StringIO.StringIO()
    validate_code = Checkcode.create_validate_code()
    img = validate_code[0]
    img.save(mstream, "GIF")
    # 将验证码保存到session
    request.session["CheckCode"] = validate_code[1]
    return HttpResponse(mstream.getvalue())


# 登录
def login(request):
    if request.method == 'POST':
        login_form = loginForm(request.POST)
        if login_form.is_valid():
            UserName = login_form.cleaned_data.get('TxtUserName')
            Password = login_form.cleaned_data.get('TxtPassword')
            ckcode = login_form.cleaned_data.get('checkcode')
            if ckcode.lower() != request.session["CheckCode"].lower():
                error = '验证码输入有误'
            else:
                if Password:
                    Password = hashlib.sha1(hashlib.md5(Password).hexdigest()).hexdigest()
                if UserName and Password:
                    try:
                        user = Users.objects.filter(u_delflag=0, u_enabled=0).get(u_account=UserName,
                                                                                  u_pwd=Password)
                        request.session['account'] = user.u_account
                        request.session['username'] = user.u_userName
                        request.session['chpwd'] = user.u_loginChPwd
                        global GET_SESSION
                        GET_SESSION = request.session.get('account', 'guest')
                        save_to_log('登录成功', '登录')
                        return HttpResponseRedirect('/')
                    except:
                        # save_to_log('用户名或密码错误','登录')
                        error = '用户名或密码输入错误'
    else:
        login_form = loginForm()
    return render_to_response('start/login.html', RequestContext(request, locals()))


# 首页
@login_valid
def index(request):
    # menus = Menus.objects.filter(m_delflag=0).order_by('m_order')
    menus = valid_auth(request.session.get('account'))
    u = request.session.get('username')
    chpwd = request.session.get('chpwd', 0)
    return render_to_response('start/index.html', {'menus': menus, 'user': u, 'chpwd': chpwd})


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
    try:
        user = Users.objects.get(u_account=account)
        user.u_pwd = newpwd
        user.u_loginChPwd = 1
        user.save()
        del request.session['chpwd']
        request.session['chpwd'] = 1
    except:
        return HttpResponse('no')
    return HttpResponse('ok')
