
FROM python:3.10-slim
LABEL authors="shijiacheng"



ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY pyproject.toml requirements.txt ./

RUN pip install pip -U

RUN pip install -r requirements.txt

COPY . /app


CMD ["python", "manage.py makemigrations"]
CMD ["python", "manage.py migrate"]

