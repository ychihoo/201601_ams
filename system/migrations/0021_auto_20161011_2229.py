# -*- coding: utf-8 -*-
# Generated by Django 1.9.8 on 2016-10-11 22:29
from __future__ import unicode_literals

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('system', '0020_auto_20160903_1639'),
    ]

    operations = [
        migrations.CreateModel(
            name='Position',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('p_name', models.CharField(max_length=20)),
                ('p_order', models.IntegerField(blank=True, null=True)),
                ('p_delflag', models.IntegerField(default=0)),
            ],
            options={
                'db_table': 't_position',
            },
        ),
        migrations.AlterField(
            model_name='log',
            name='log_time',
            field=models.DateTimeField(default=datetime.datetime(2016, 10, 11, 22, 29, 8, 960000)),
        ),
    ]
