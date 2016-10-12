# coding:utf-8
from __future__ import unicode_literals
from django.utils import timezone
from django.db import models


# Create your models here.


class Roles(models.Model):
    r_name = models.CharField(max_length=30, unique=True)
    r_description = models.CharField(max_length=100, null=True, blank=True)
    r_authority = models.CharField(max_length=50)
    r_delflag = models.IntegerField(default=0, null=True, blank=True)

    class Meta:
        db_table = 't_roles'


class Department(models.Model):
    dept_name = models.CharField(max_length=20)
    dept_parentID = models.IntegerField(default=0, null=True, blank=True)
    dept_order = models.IntegerField(null=True, blank=True)
    dept_delflag = models.IntegerField(default=0, null=True, blank=True)

    def __str__(self):
        return "%s" % self.dept_name

    class Meta:
        db_table = 't_department'


class Users(models.Model):
    u_account = models.CharField(max_length=20, unique=True)
    u_pwd = models.CharField(max_length=50)
    u_userName = models.CharField(max_length=20)
    u_dept = models.CharField(max_length=40,null=True, blank=True)
    u_position = models.CharField(max_length=20, null=True, blank=True)
    u_role = models.ForeignKey(Roles, null=True, blank=True)
    u_tel = models.CharField(max_length=15, null=True, blank=True)
    u_email = models.CharField(max_length=30, null=True, blank=True)
    u_loginChPwd = models.IntegerField(default=0)  # 0表示首次登陆更改密码
    u_enabled = models.IntegerField(default=0)  # 启用 禁用
    u_delflag = models.IntegerField(default=0)  # 删除
    u_lastLogin = models.DateTimeField(null=True, blank=True)
    u_lastIP = models.GenericIPAddressField(null=True, blank=True)

    class Meta:
        db_table = 't_users'


class Menus(models.Model):
    m_name = models.CharField(max_length=30)
    m_parentID = models.IntegerField(default=0, null=True, blank=True)
    m_order = models.IntegerField(null=True, blank=True, default=0)
    m_delflag = models.IntegerField(default=0, null=True, blank=True)
    m_url = models.CharField(max_length=50, null=True, blank=True)

    def __unicode__(self):
        return self.m_name

    class Meta:
        db_table = 't_menus'


class Providers(models.Model):
    pro_name = models.CharField(max_length=50, unique=True)
    pro_delflag = models.IntegerField(default=0, null=True, blank=True)

    def __unicode__(self):
        return self.pro_name

    class Meta:
        db_table = 't_providers'


class Log(models.Model):
    log_content = models.CharField(max_length=50)
    log_action = models.CharField(max_length=50, null=True, blank=True)
    log_operater = models.CharField(max_length=20, null=True, blank=True)
    log_time = models.DateTimeField(default=timezone.datetime.now())
    log_IP = models.GenericIPAddressField(null=True, blank=True)
    log_fqdn = models.CharField(max_length=30, null=True, blank=True)
    log_mac = models.CharField(max_length=20, null=True, blank=True)

    def __unicode__(self):
        return "%s %s %s" % (self.log_content, self.log_active, self.log_operater)

    class Meta:
        db_table = 't_log'


class Position(models.Model):
    p_name = models.CharField(max_length=20)
    p_order = models.IntegerField(null=True, blank=True)
    p_delflag = models.IntegerField(default=0)

    class Meta:
        db_table = 't_position'