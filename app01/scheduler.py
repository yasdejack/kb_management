# app01/scheduler.py
from apscheduler.schedulers.background import BackgroundScheduler
from django_apscheduler.jobstores import DjangoJobStore, register_job, register_events
from .tasks import jobindex, jobindexall


def schedule_new_job(scheduler, interval_hours, contenttype, org, repo=None):
    register_events(scheduler)
    if not scheduler.running:
        scheduler.start()
    scheduler.remove_job(org) if scheduler.get_job(org) else None
    if contenttype == 'all':
        scheduler.add_job(jobindexall, 'interval', hours=interval_hours, args=[org], id=org,
                          replace_existing=True)
    else:
        scheduler.add_job(jobindex, 'interval',hours=interval_hours, args=[contenttype,org,repo],
                          id=org, replace_existing=True)











