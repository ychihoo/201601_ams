# -*- coding: utf-8 -*-
# Generated by Django 1.9.8 on 2016-08-19 22:42
from __future__ import unicode_literals

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('assets', '0012_auto_20160802_2115'),
    ]

    operations = [
        migrations.AlterField(
            model_name='assets',
            name='ass_operDate',
            field=models.DateTimeField(default=datetime.datetime(2016, 8, 19, 22, 42, 3, 347000)),
        ),
        migrations.AlterField(
            model_name='assets_detail',
            name='ass_operDate',
            field=models.DateTimeField(default=datetime.date(2016, 8, 19)),
        ),
    ]
