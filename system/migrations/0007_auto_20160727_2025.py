# -*- coding: utf-8 -*-
# Generated by Django 1.9.8 on 2016-07-27 12:25
from __future__ import unicode_literals

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('system', '0006_auto_20160725_2148'),
    ]

    operations = [
        migrations.AddField(
            model_name='log',
            name='log_fqdn',
            field=models.CharField(blank=True, max_length=30, null=True),
        ),
        migrations.AddField(
            model_name='log',
            name='log_mac',
            field=models.CharField(blank=True, max_length=20, null=True),
        ),
        migrations.AlterField(
            model_name='log',
            name='log_IP',
            field=models.GenericIPAddressField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='log',
            name='log_time',
            field=models.DateTimeField(default=datetime.datetime(2016, 7, 27, 20, 25, 48, 165000)),
        ),
    ]