# -*- coding: utf-8 -*-
# Generated by Django 1.9.8 on 2016-08-02 20:52
from __future__ import unicode_literals

import datetime

from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ('assets', '0010_auto_20160730_2059'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='Catagory',
            new_name='Category',
        ),
        migrations.RenameField(
            model_name='category',
            old_name='cata_comment',
            new_name='cate_comment',
        ),
        migrations.RenameField(
            model_name='category',
            old_name='cata_name',
            new_name='cate_name',
        ),
        migrations.RenameField(
            model_name='category',
            old_name='cata_order',
            new_name='cate_order',
        ),
        migrations.AlterField(
            model_name='assets',
            name='ass_operDate',
            field=models.DateTimeField(default=datetime.datetime(2016, 8, 2, 20, 52, 46, 963000)),
        ),
        migrations.AlterField(
            model_name='assets_detail',
            name='ass_operDate',
            field=models.DateTimeField(default=datetime.date(2016, 8, 2)),
        ),
        migrations.AlterModelTable(
            name='category',
            table='t_category',
        ),
    ]
