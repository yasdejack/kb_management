from django.apps import AppConfig


class App01Config(AppConfig):
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'app01'

    # def ready(self):
    #     from .scheduler import start_scheduler
    #     start_scheduler()
    #     print("到这了")


