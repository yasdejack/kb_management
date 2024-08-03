# app01/consumers.py

import json

from asgiref.sync import async_to_sync
from channels.generic.websocket import WebsocketConsumer

import logging
logger = logging.getLogger(__name__)

class TaskStatusConsumer(WebsocketConsumer):
    def connect(self):
        self.accept()
        async_to_sync(self.channel_layer.group_add)("tasks_group", self.channel_name)
        logger.info(f"WebSocket connection accepted: {self.channel_name}")

    def disconnect(self, close_code):
        async_to_sync(self.channel_layer.group_discard)("tasks_group", self.channel_name)
        logger.info(f"WebSocket connection closed: {self.channel_name}")

    def receive(self, text_data):
        self.send(text_data=json.dumps({
            'message': text_data
        }))

    def task_update(self, event):
        task_id = event['task_id']
        status = event['status']

        self.send(text_data=json.dumps({
            'task_id': task_id,
            'status': status,
        }))
        logger.info(f"Task update sent: task_id={task_id}, status={status}")
