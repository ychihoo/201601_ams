# -*- coding: utf-8 -*-
# Generated by Django 1.9.8 on 2016-07-29 19:22
from __future__ import unicode_literals

import datetime

from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ('system', '0008_auto_20160727_2029'),
    ]

    operations = [
        migrations.AlterField(
            model_name='log',
            name='log_operater',
            field=models.CharField(blank=True, max_length=20, null=True),
        ),
        migrations.AlterField(
            model_name='log',
            name='log_time',
            field=models.DateTimeField(default=datetime.datetime(2016, 7, 29, 19, 22, 5, 943000)),
        ),
    ]
