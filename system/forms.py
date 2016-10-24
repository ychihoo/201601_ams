# coding:utf-8

import hashlib

from django import forms

from system.models import *


# from start.public import save_to_log


class loginForm(forms.Form):
    TxtUserName = forms.CharField(max_length=20)
    TxtPassword = forms.CharField()

    def __init__(self, *args, **kwargs):
        self.__user_cache = None
        super(loginForm, self).__init__(*args, **kwargs)

    def clean(self):
        UserName = self.cleaned_data.get('TxtUserName')
        Password = self.cleaned_data.get('TxtPassword')
        if Password:
            Password = hashlib.sha1(hashlib.md5(Password).hexdigest()).hexdigest()
        if UserName and Password:
            try:
                self.__user_cache = Users.objects.filter(u_delflag=0, u_enabled=0).get(u_account=UserName,
                                                                                       u_pwd=Password)
            except:
                # save_to_log('用户名或密码错误','登录')
                raise forms.ValidationError(u'用户名或密码输入错误')
        return self.cleaned_data

    def get_user(self):
        return self.__user_cache
