# -*- coding: utf-8 -*-
# Generated by Django 1.9.8 on 2016-07-30 20:59
from __future__ import unicode_literals

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('system', '0010_auto_20160730_2055'),
    ]

    operations = [
        migrations.AlterField(
            model_name='log',
            name='log_time',
            field=models.DateTimeField(default=datetime.datetime(2016, 7, 30, 20, 59, 9, 39000)),
        ),
    ]
