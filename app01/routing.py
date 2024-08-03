# app01/routing.py

from django.urls import re_path
from . import consumer

websocket_urlpatterns = [
    re_path(r'tasks/$', consumer.TaskStatusConsumer.as_asgi()),
]
