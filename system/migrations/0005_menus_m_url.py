# -*- coding: utf-8 -*-
# Generated by Django 1.9.8 on 2016-07-24 09:15
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):
    dependencies = [
        ('system', '0004_auto_20160724_1212'),
    ]

    operations = [
        migrations.AddField(
            model_name='menus',
            name='m_url',
            field=models.CharField(blank=True, max_length=50, null=True),
        ),
    ]
