# -*- coding: utf-8 -*-
# Generated by Django 1.9.8 on 2016-09-02 20:45
from __future__ import unicode_literals

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('assets', '0016_auto_20160829_2050'),
    ]

    operations = [
        migrations.AlterField(
            model_name='assets',
            name='ass_operDate',
            field=models.DateTimeField(default=datetime.datetime(2016, 9, 2, 20, 45, 24, 5000)),
        ),
        migrations.AlterField(
            model_name='assets_detail',
            name='ass_operDate',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2016, 9, 2, 20, 45, 24, 9000), null=True),
        ),
    ]
