# -*- coding: utf-8 -*-
# Generated by Django 1.9.8 on 2016-07-30 20:55
from __future__ import unicode_literals

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('assets', '0008_auto_20160729_1922'),
    ]

    operations = [
        migrations.AlterField(
            model_name='assets',
            name='ass_operDate',
            field=models.DateTimeField(default=datetime.date(2016, 7, 30)),
        ),
        migrations.AlterField(
            model_name='assets_detail',
            name='ass_changeDate',
            field=models.DateField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='assets_detail',
            name='ass_operDate',
            field=models.DateTimeField(default=datetime.date(2016, 7, 30)),
        ),
    ]
