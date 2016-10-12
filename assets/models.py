# coding:utf-8
from __future__ import unicode_literals

from django.db import models
from django.utils import timezone


# Create your models here.

class Assets(models.Model):
    ass_id = models.CharField(max_length=20, unique=True)
    ass_name = models.CharField(max_length=30)
    ass_brand = models.CharField(max_length=30)
    ass_model = models.CharField(max_length=50)
    ass_SN = models.CharField(max_length=20, null=True, blank=True)
    ass_configuration = models.CharField(max_length=100, null=True, blank=True)
    ass_category = models.CharField(max_length=20, null=True, blank=True)
    ass_class = models.CharField(max_length=20, null=True, blank=True)
    ass_secret = models.IntegerField(default=1)  # 1表示不涉密
    ass_quantity = models.IntegerField()
    ass_price = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    ass_buyDate = models.DateField(null=True, blank=True)
    ass_period = models.CharField(max_length=5, null=True, blank=True)
    ass_provider = models.CharField(max_length=50, null=True, blank=True)
    ass_acceptDept = models.CharField(max_length=20, null=True, blank=True)
    ass_acceptUser = models.CharField(max_length=10, null=True, blank=True, default='')
    ass_user = models.CharField(max_length=10, null=True, blank=True, default='')
    ass_acceptDate = models.DateTimeField(null=True, blank=True)
    ass_acceptDeadline = models.IntegerField(default=0, null=True, blank=True)   # 0表示无期限，按月数计算
    ass_isLabel = models.IntegerField(default=0)  # 0表示贴标
    ass_location = models.CharField(max_length=20, null=True, blank=True)
    ass_operator = models.CharField(max_length=10,)
    ass_operDate = models.DateTimeField(default=timezone.now())
    ass_enabled = models.IntegerField(default=0)  # 0启用，1停用等
    ass_flag = models.IntegerField(default=0)  # 2删除,1使用中，0闲置
    ass_pic = models.ImageField(null=True, blank=True, upload_to='static/pic')  # 实物图片
    ass_billPic = models.ImageField(null=True, blank=True, upload_to='static/billPic')  # 票据
    ass_comment = models.CharField(max_length=100, null=True, blank=True)
    ass_archiveNO = models.CharField(max_length=50, blank=True, null=True)  # 存档号（位置）
    #
    # def __unicode__(self):
    #     return self.ass_name

    class Meta:
        db_table = 't_assets'


class Assets_Detail(models.Model):
    ass_id = models.ForeignKey(Assets)
    ass_action = models.CharField(max_length=20, null=True, blank=True)
    ass_acceptDept = models.CharField(max_length=20, null=True, blank=True)
    ass_acceptUser = models.CharField(max_length=10, null=True, blank=True)
    ass_user = models.CharField(max_length=10, null=True, blank=True)
    ass_changeDate = models.DateField(null=True, blank=True)
    ass_reason = models.CharField(max_length=100, null=True, blank=True)
    ass_location = models.CharField(max_length=20, null=True, blank=True)
    ass_operator = models.CharField(max_length=10)
    ass_operDate = models.DateTimeField(null=True, blank=True, default=timezone.now())
    ass_flag = models.IntegerField(default=0, null=True, blank=True)  # 行政回收，资产变更，资产升级
    ass_comment = models.CharField(max_length=100, null=True, blank=True)
    ass_approve = models.IntegerField(default=0, null=True, blank=True)  # 0表示审核通过 1表示流程发起 2 表示处理流程

    def __unicode__(self):
        pass

    class Meta:
        db_table = 't_assets_detail'
        ordering = ['ass_id', 'ass_operDate']


class Repair(models.Model):
    ass_id = models.ForeignKey(Assets)
    re_date = models.DateField()
    re_reason = models.CharField(max_length=200, null=True, blank=True)
    re_content = models.CharField(max_length=500, null=True, blank=True)
    re_price = models.DecimalField(max_digits=10, decimal_places=2, default=0.00, null=True, blank=True)
    re_operator = models.CharField(max_length=10, null=True, blank=True)
    re_comment = models.CharField(max_length=100, null=True, blank=True)

    def __unicode__(self):
        pass

    class Meta:
        db_table = 't_repair'


class Category(models.Model):
    cate_name = models.CharField(max_length=30, unique=True)
    cate_order = models.IntegerField(null=True, blank=True)
    cate_comment = models.CharField(max_length=100, null=True, blank=True)
    cate_delflag = models.IntegerField(default=0, null=True, blank=True)

    def __unicode__(self):
        return "%s" % (self.cate_name)

    class Meta:
        db_table = 't_category'


class Brand(models.Model):
    brand_name = models.CharField(max_length=30, unique=True)
    brand_order = models.IntegerField(null=True, blank=True)
    brand_delflag = models.IntegerField(default=0, null=True, blank=True)

    def __unicode__(self):
        return "%s" % self.brand_name

    class Meta:
        db_table = 't_brand'


