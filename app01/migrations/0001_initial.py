# Generated by Django 3.2 on 2021-05-06 08:35

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='LmsUser',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False, verbose_name='序号')),
                ('username', models.CharField(max_length=32, verbose_name='用户名')),
                ('password', models.CharField(max_length=32, verbose_name='密码')),
                ('email', models.EmailField(max_length=254, verbose_name='邮箱')),
                ('mobile', models.IntegerField(max_length=11, verbose_name='手机')),
            ],
        ),
        migrations.CreateModel(
            name='Publisher',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False, verbose_name='序号')),
                ('name', models.CharField(max_length=64, verbose_name='名称')),
                ('addr', models.CharField(max_length=64, verbose_name='地址')),
            ],
        ),
        migrations.CreateModel(
            name='Book',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False, verbose_name='序号')),
                ('name', models.CharField(max_length=64, null=True, verbose_name='名称')),
                ('ISBN', models.CharField(max_length=64, verbose_name='编号')),
                ('translator', models.CharField(max_length=64, verbose_name='译者')),
                ('date', models.DateField(blank=True, max_length=64, verbose_name='出版日期')),
                ('publisher', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app01.publisher')),
            ],
        ),
        migrations.CreateModel(
            name='Author',
            fields=[
                ('id', models.AutoField(primary_key=True, serialize=False, verbose_name='序号')),
                ('name', models.CharField(max_length=64, verbose_name='姓名')),
                ('sex', models.CharField(max_length=4, verbose_name='性别')),
                ('age', models.IntegerField(default=0, verbose_name='年龄')),
                ('tel', models.CharField(max_length=64, verbose_name='联系方式')),
                ('book', models.ManyToManyField(to='app01.Book')),
            ],
        ),
    ]
