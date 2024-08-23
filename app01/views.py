import csv
import hashlib
import requests
from asgiref.sync import async_to_sync
from channels.layers import get_channel_layer
from django.http import HttpResponseRedirect, HttpResponse, JsonResponse
from django.shortcuts import render, redirect, get_object_or_404
from django.contrib.auth.decorators import login_required
from django.contrib.auth import authenticate, login, logout
from django.views.decorators.csrf import csrf_exempt
import json
from io import StringIO
from bms.es_client import create_es_client
from .tasks import jobindexall, jobindex
from app01 import models
from .scheduler import schedule_new_job
from apscheduler.schedulers.background import BackgroundScheduler
from django_apscheduler.jobstores import DjangoJobStore
from django.utils import timezone
from datetime import datetime
from .consumer import logger

# Create your views here.
from app01.models import msUser, JSONFile, CSVFile, Dashboard, RunningTask

scheduler = BackgroundScheduler(timezone='utc')
scheduler.add_jobstore(DjangoJobStore(),"default")





# 1.登录

def login_view(request):
    error_message = None

    if request.method == 'POST' and request.POST:
        username = request.POST.get("username")
        password = request.POST.get("password")

        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            response = HttpResponseRedirect('/showtasks/')
            response.set_cookie("username", user.username)
            response.set_cookie("organization", user.organization)
            return response
        #
        # e = msUser.objects.filter(username = username).first()
        # if e:
        #     now_password = password
        #     #now_password = setPassword(password)
        #     db_password = e.password
        #     if now_password == db_password:
        #         response = HttpResponseRedirect('/showtasks/')
        #         response.set_cookie("username", e.username)  #有cookie
        #         response.set_cookie("organization",e.organization)
        #         return response

        else:
            error_message = "username or password wrong, please try again"
    return render(request, "login.html",{'error_message': error_message})


def logout_view(request):
    logout(request)

    #clear cookies
    response = HttpResponseRedirect('/login/')
    response.delete_cookie('username')
    response.delete_cookie('organization')

    return response



@login_required
def showtasks(request):
    username = request.COOKIES.get('username')
    print(RunningTask.objects.exists())
    tasks = RunningTask.objects.all()
    context = {'username': username,
               'tasks': tasks
               }
    return render(request, 'user_runsett.html',context)


@csrf_exempt
def update_task_status(request):
    if request.method == 'POST':
        data = json.loads(request.body)
        task_id = data.get('task_id')
        ele = task_id.split('_')
        content = ele[0]
        org = ele[1]
        repo = ele[2]

        status = data.get('status')
        if status == 'running':
            #websocket
            try:
                task = RunningTask.objects.get(task_id=task_id)
                task.status = status
                task.save()
            except RunningTask.DoesNotExist:
                # 如果任务不存在，则创建一个新的任务
                task = RunningTask(
                    task_id=task_id,
                    status=status,
                    contenttype=content,  # 根据实际情况设置
                    org=org,  # 根据实际情况设置
                    repo=repo,
                    start_time=timezone.now()
                )
                task.save()

            channel_layer = get_channel_layer()
            async_to_sync(channel_layer.group_send)(
                "tasks_group",
                {
                    "type": "task.update",
                    "task_id": task_id,
                    "status": status,
                },
            )
            return JsonResponse({'message': 'Task status updated successfully', 'task_id': task_id, 'status': status})
        elif status == 'end':
            task = RunningTask.objects.get(task_id=task_id)
            task.delete()
            logger.info(task_id+" ends at "+ datetime.now().isoformat())
            channel_layer = get_channel_layer()
            async_to_sync(channel_layer.group_send)(
                "tasks_group",
                {
                    "type": "task.update",
                    "task_id": task_id,
                    "status": status,
                },
            )
            return JsonResponse({'message': 'Task status updated successfully', 'task_id': task_id, 'status': status})

def get_tasks(request):
    tasks = RunningTask.objects.all()
    task_list = [{'task_id': task.task_id, 'status': task.status} for task in tasks]
    return JsonResponse({'success': True, 'tasks': task_list})

@login_required
def showkibana(request):
    username = request.COOKIES.get('username')
    org = request.COOKIES.get('organization')

    ##todo add a new model dashboard, and add logic here


    dashboard = Dashboard.objects.filter(organization = org).first()

    link = dashboard.link


    context = {'username': username,
               'link':link
               }

    return render(request, 'show_visual.html',context)



@csrf_exempt
def sendingconfiguredtasks(request):
    org = request.COOKIES.get('organization')
    if request.method == 'POST' and request.POST:
        repo = None
        objr = request.POST

        contenttype = objr.get("contenttype")
        if(contenttype) == 'notebook':
            repo = request.POST.get("notebook")
        period = objr.get("period")
        if repo is None: repo = ""
        if contenttype == 'all':
            task_id = "all"
        else:
            task_id = f"{contenttype}_{org}_{repo}"

        if RunningTask.objects.filter(task_id=task_id).exists():
            existing_task = RunningTask.objects.filter(task_id=task_id).first()
            start_time = existing_task.start_time.strftime('%Y-%m-%d %H:%M:%S')


            return JsonResponse({'success': False, 'error': f"The same configured task is running. Started at: {start_time}"})



        try:
            if contenttype == 'all':
                if period == 'month':
                    schedule_new_job(scheduler, 720, all, org, None)
                    jobindexall(org)
                elif period == 'week':
                    schedule_new_job(scheduler, 2, all, org, None)
                    jobindexall(org)
                else:
                    jobindexall(org)

            # 单种资源执行
            else:
                if period == 'month':
                    schedule_new_job(scheduler, 720, contenttype, org, repo)
                    jobindex(contenttype, org, repo)
                elif period == 'week':
                    schedule_new_job(scheduler, 2, contenttype, org, repo)
                    jobindex(contenttype, org, repo)
                else:
                    jobindex(contenttype, org, repo)

            RunningTask.objects.create(task_id=task_id, contenttype=contenttype, org=org, repo=repo,
                                       start_time=timezone.now())

            return JsonResponse({'success': True})
        except Exception as e:
            return JsonResponse({'success': False, 'error': str(e)})
    else:
        return JsonResponse({'success': False, 'error': 'Invalid request method or POST data'})










@login_required
def organization_dashboard(request):
    username = request.COOKIES.get('username')

    #Kibana Dashboard URL

    kibana_dashboard_url = "http://kibana:5601/app/r/s/uPjoN"

    return render(request, 'dashboard.html', {'kibana_dashboard_url': kibana_dashboard_url})




# 删除documents
def delete_document(request):
    if request.method == 'POST':
        data = json.loads(request.body)
        index_name = data.get('index_name')
        document_id = data.get('document_id')

        hosts = ['https://elasticsearch:9200']
        username = 'elastic'
        password = 'changeme'

        es = create_es_client(hosts,username,password)

        try:
            response = es.delete(index=index_name, id=document_id)
            return JsonResponse({'result': 'success', 'response': response})
        except Exception as e:
            return JsonResponse({'result': 'error', 'message': str(e)})
    else:
        return JsonResponse({'result': 'error', 'message': 'Invalid request method'})



@login_required
def show_config(request):
    if request.method == 'GET':
        username = request.COOKIES.get('username')
        json_file = get_object_or_404(JSONFile, name="config")
        context = {
            'json_data': json.dumps(json_file.data, indent=4),
            'last_modified': json_file.last_modified,
            'modified_by': json_file.modified_by,
            'file_name': json_file.name,
            'csrf_token': request.COOKIES.get('csrftoken'),
            'username': username,
        }
        return render(request, 'webpage_config.html', context)

    elif request.method == 'POST':
        json_file = get_object_or_404(JSONFile, name="config")
        new_data = json.loads(request.body.decode('utf-8'))

        #update json file
        json_file.data = new_data
        json_file.modified_by = request.user.username if request.user.is_authenticated else 'unknown'
        json_file.save()

        ## send request to indexer
        response = update_indexer_config(f'ResearchInfrastructures', new_data, indexer_url = 'http://indexer:5001/editing_json')   ##without .json
        if response.status_code == 200:
            return JsonResponse({'message': 'JSON file updated successfully'})
        else:
            return JsonResponse({'error': 'Failed to update configuration in indexer', 'details': response.text}, status=500)

    else:
        return HttpResponse(status=405)


def update_indexer_config(file_name, new_data,indexer_url):
    payload = {
        'file_name': file_name,
        'data': new_data
    }
    headers = {
        'Content-Type': 'application/json'
    }
    response = requests.post(indexer_url, data=json.dumps(payload), headers=headers)
    return response




@login_required
def show_notebook_config(request):
    if request.method == 'GET':
        username = request.COOKIES.get('username')
        csv_file = get_object_or_404(CSVFile, name="notebook")

        csv_content = csv_file.data
        csv_reader = csv.reader(StringIO(csv_content))
        csv_data = [row for row in csv_reader]

        context = {
            'csv_data': csv_data,
            'last_modified': csv_file.last_modified,
            'modified_by': csv_file.modified_by,
            'file_name': csv_file.name,
            'csrf_token': request.COOKIES.get('csrftoken'),
            'username': username,
        }
        return render(request, 'notebook_config.html', context)

    elif request.method == 'POST':
        data = json.loads(request.body)
        file_name = data['file_name'] ##configure
        content = data['content']

        csv_file = get_object_or_404(CSVFile, name=file_name)
        csv_file.data = content
        csv_file.modified_by = request.user.username if request.user.is_authenticated else 'unknown'
        csv_file.save()


        csv_string = content.replace('\n', '\\n')

        response = update_indexer_config(f'envri_queries', csv_string,
                                         indexer_url='http://indexer:5001/editing_notebook_data_sources')
        if response.status_code == 200:
            return JsonResponse({'message': 'CSV file updated successfully'})
        else:
            return JsonResponse({'error': 'Failed to update configuration in indexer', 'details': response.text},
                                status=500)

    else:
        return HttpResponse(status=405)


def register(request):
    if request.method == "POST" and request.POST:
        data = request.POST
        username = data.get("username")
        email = data.get("email")
        password = data.get("password")
        mobile = data.get("mobile")
        user = msUser.objects.create(
            username=username,
            email=email,
            mobile=mobile,
        )
        user.set_password(password)
        user.save()
        return HttpResponseRedirect('/login/')
    return render(request,"register.html")
