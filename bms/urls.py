"""bms URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/3.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.conf.urls import url
from django.contrib import admin
from django.urls import path

from app01 import views
# from app01.scheduler import start_scheduler

urlpatterns = [
    path('admin/', admin.site.urls),
    url(r'^$', views.login_view),
    url(r'^showtasks/',views.showtasks),
    url(r'^showkibana/',views.showkibana),
    url(r'^send_indextask/',views.sendingconfiguredtasks),  
    url(r'^login/', views.login_view),     
    url(r'^logout/', views.logout_view),
    url(r'^signup/', views.register),     
    url(r'^register/', views.register),     
    url(r'^delete_document/',views.delete_document),
    url(r'^show_config/',views.show_config),
    url(r'^show_notebook_config/',views.show_notebook_config),
    url(r'^update_task_status/',views.update_task_status),
    url(r'^get_tasks/$', views.get_tasks)

]
