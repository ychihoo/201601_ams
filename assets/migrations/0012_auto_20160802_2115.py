# -*- coding: utf-8 -*-
# Generated by Django 1.9.8 on 2016-08-02 21:15
from __future__ import unicode_literals

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('assets', '0011_auto_20160802_2052'),
    ]

    operations = [
        migrations.AlterField(
            model_name='assets',
            name='ass_acceptUser',
            field=models.CharField(blank=True, default='', max_length=10, null=True),
        ),
        migrations.AlterField(
            model_name='assets',
            name='ass_operDate',
            field=models.DateTimeField(default=datetime.datetime(2016, 8, 2, 21, 15, 58, 202000)),
        ),
        migrations.AlterField(
            model_name='assets',
            name='ass_user',
            field=models.CharField(blank=True, default='', max_length=10, null=True),
        ),
    ]
