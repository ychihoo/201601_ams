# -*- coding: utf-8 -*-
# Generated by Django 1.9.8 on 2016-08-24 22:05
from __future__ import unicode_literals

import datetime

from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ('system', '0015_auto_20160820_1854'),
    ]

    operations = [
        migrations.AlterField(
            model_name='log',
            name='log_time',
            field=models.DateTimeField(default=datetime.datetime(2016, 8, 24, 22, 5, 37, 38000)),
        ),
    ]
