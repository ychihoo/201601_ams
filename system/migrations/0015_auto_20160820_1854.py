# -*- coding: utf-8 -*-
# Generated by Django 1.9.8 on 2016-08-20 18:54
from __future__ import unicode_literals

import datetime

from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ('system', '0014_auto_20160819_2242'),
    ]

    operations = [
        migrations.AlterField(
            model_name='log',
            name='log_time',
            field=models.DateTimeField(default=datetime.datetime(2016, 8, 20, 18, 54, 13, 684000)),
        ),
    ]
