from django.contrib.auth.base_user import AbstractBaseUser, BaseUserManager
from django.contrib.auth.models import PermissionsMixin
from django.db import models
from django.utils import timezone


# Create your models here.



class msUserManager(BaseUserManager):
    def create_user(self, username, password=None, **extra_fields):
        if not username:
            raise ValueError('The Username field must be set')
        user = self.model(username=username, **extra_fields)
        user.set_password(password)
        user.save(using=self._db)
        return user

    def create_superuser(self, username, password=None, **extra_fields):
        extra_fields.setdefault('is_staff', True)
        extra_fields.setdefault('is_superuser', True)

        return self.create_user(username, password, **extra_fields)


# user class
class msUser(AbstractBaseUser, PermissionsMixin):
    id = models.AutoField('序号', primary_key=True)
    username = models.CharField('用户名', max_length=32)
    password = models.CharField('密码', null=False, max_length=128)
    organization = models.CharField('RI', max_length=32,default='RI')
    email = models.CharField('邮箱', max_length=254)
    mobile = models.BigIntegerField('手机',blank='True')
    USERNAME_FIELD = 'username'
    REQUIRED_FIELDS = []

    is_active = models.BooleanField(default=True)
    is_staff = models.BooleanField(default=False)
    is_superuser = models.BooleanField(default=False)

    objects = msUserManager()

    USERNAME_FIELD = 'username'
    REQUIRED_FIELDS = []

    @property
    def is_anonymous(self):
        return False

    @property
    def is_authenticated(self):
        return True


# from django.contrib.auth.models import User

class JSONFile(models.Model):
    name = models.CharField(max_length=255, unique=True)  # 文件名或标识符
    data = models.JSONField()  # JSON 数据
    last_modified = models.DateTimeField(auto_now=True)  # 最后修改时间
    modified_by = models.CharField(max_length=255, null=False, blank=False)  # 修改者


    def __str__(self):
        return self.name



class CSVFile(models.Model):
    name = models.CharField(max_length=255, unique=True)  # 文件名或标识符
    data = models.TextField()  # CSV 数据
    last_modified = models.DateTimeField(auto_now=True)  # 最后修改时间
    modified_by = models.CharField(max_length=255, null=False, blank=False)  # 修改者


class Dashboard(models.Model):
    id = models.AutoField('序号', primary_key=True)
    organization = models.CharField('RI', max_length=32, default='RI')
    link = models.TextField(null=False)


class RunningTask(models.Model):
    task_id = models.CharField(max_length=255, unique=True)
    contenttype = models.CharField(max_length=32)
    org = models.CharField(max_length=32)
    repo = models.CharField(max_length=32, null=True, blank=True)
    start_time = models.DateTimeField(default=timezone.now)
    status = models.CharField(max_length=32,default='waiting')






