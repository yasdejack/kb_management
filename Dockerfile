# 使用官方的 Python 基础镜像
FROM python:3.10-slim
LABEL authors="shijiacheng"


# 确保 Python 输出不会被缓冲
ENV PYTHONUNBUFFERED=1
# 设置工作目录
WORKDIR /app

COPY pyproject.toml requirements.txt ./

RUN pip install pip -U

RUN pip install -r requirements.txt

# 复制项目文件到容器中
COPY . /app


# 运行应用
CMD ["python", "manage.py makemigrations"]
CMD ["python", "manage.py migrate"]

