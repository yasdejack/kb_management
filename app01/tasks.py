import schedule
import time
import requests
from datetime import datetime, timedelta

from django_apscheduler.models import DjangoJobExecution, DjangoJob



def jobindexall(org):
    print("Sending HTTP request...")
    json_data = {
        'org': org,
    }
    response = requests.post('http://indexer:5001/run_indexer_all',json=json_data)
    if response.status_code == 200:
        print("Request sent successfully!")
    else:
        print(f"Failed to send request. Status code: {response.status_code}")

def jobindex(contentype,org,repo=None):
    json_data = {
        'contenttype': contentype,
        'org': org,
        'repo': repo
    }
    response = requests.post('http://indexer:5001/run_indexer', json=json_data)
    print(datetime.now().isoformat())

    if response.status_code == 200:
        print("Request sent successfully!")
    else:
        print(f"Failed to send request. Status code: {response.status_code}")



