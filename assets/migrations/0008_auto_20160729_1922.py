# -*- coding: utf-8 -*-
# Generated by Django 1.9.8 on 2016-07-29 19:22
from __future__ import unicode_literals

import datetime

from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ('assets', '0007_auto_20160727_2025'),
    ]

    operations = [
        migrations.AlterField(
            model_name='assets',
            name='ass_brand',
            field=models.CharField(max_length=30),
        ),
        migrations.AlterField(
            model_name='assets',
            name='ass_operDate',
            field=models.DateTimeField(default=datetime.date(2016, 7, 29)),
        ),
        migrations.AlterField(
            model_name='assets_detail',
            name='ass_operDate',
            field=models.DateTimeField(default=datetime.date(2016, 7, 29)),
        ),
    ]
