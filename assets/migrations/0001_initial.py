# -*- coding: utf-8 -*-
# Generated by Django 1.9.8 on 2016-07-23 12:14
from __future__ import unicode_literals

import datetime
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Assets',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ass_id', models.CharField(max_length=20, unique=True)),
                ('ass_name', models.CharField(max_length=30)),
                ('ass_brand', models.CharField(max_length=10)),
                ('ass_model', models.CharField(max_length=50)),
                ('ass_configuration', models.CharField(blank=True, max_length=100, null=True)),
                ('ass_category', models.CharField(max_length=10)),
                ('ass_secret', models.IntegerField(default=1)),
                ('ass_quantity', models.IntegerField()),
                ('ass_price', models.DecimalField(decimal_places=2, default=0.0, max_digits=10)),
                ('ass_buyDate', models.DateField(blank=True, null=True)),
                ('ass_period', models.CharField(blank=True, max_length=5, null=True)),
                ('ass_provider', models.CharField(blank=True, max_length=50, null=True)),
                ('ass_acceptDept', models.CharField(blank=True, max_length=20, null=True)),
                ('ass_acceptUser', models.CharField(blank=True, max_length=10, null=True)),
                ('ass_user', models.CharField(blank=True, max_length=10, null=True)),
                ('ass_acceptDate', models.DateTimeField(blank=True, null=True)),
                ('ass_isLabel', models.IntegerField(default=0)),
                ('ass_location', models.CharField(blank=True, max_length=20, null=True)),
                ('ass_operator', models.CharField(max_length=10)),
                ('ass_operDate', models.DateTimeField(default=datetime.date(2016, 7, 23))),
                ('ass_flag', models.IntegerField(default=0)),
                ('ass_pic', models.ImageField(blank=True, null=True, upload_to='pic')),
                ('ass_billPic', models.ImageField(blank=True, null=True, upload_to='billPic')),
                ('ass_comment', models.CharField(blank=True, max_length=100, null=True)),
            ],
            options={
                'db_table': 'assets',
            },
        ),
        migrations.CreateModel(
            name='Assets_Detail',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('ass_acceptDept', models.CharField(blank=True, max_length=20, null=True)),
                ('ass_acceptUser', models.CharField(blank=True, max_length=10, null=True)),
                ('ass_user', models.CharField(blank=True, max_length=10, null=True)),
                ('ass_changeDate', models.DateField()),
                ('ass_location', models.CharField(blank=True, max_length=20, null=True)),
                ('ass_operator', models.CharField(max_length=10)),
                ('ass_operDate', models.DateTimeField(default=datetime.date(2016, 7, 23))),
                ('ass_flag', models.IntegerField(blank=True, default=0, null=True)),
                ('ass_comment', models.CharField(blank=True, max_length=100, null=True)),
                ('ass_approve', models.IntegerField(blank=True, default=0, null=True)),
                ('ass_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='assets.Assets')),
            ],
            options={
                'db_table': 'assets_detail',
            },
        ),
        migrations.CreateModel(
            name='Repair',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('re_date', models.DateField()),
                ('re_content', models.CharField(max_length=500)),
                ('re_price', models.DecimalField(decimal_places=2, default=0.0, max_digits=10)),
                ('re_operator', models.CharField(max_length=10)),
                ('ass_id', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='assets.Assets')),
            ],
            options={
                'db_table': 'repair',
            },
        ),
    ]
