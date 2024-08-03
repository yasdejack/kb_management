from elasticsearch import Elasticsearch
# from elasticsearch.connection import create_ssl_context
import ssl


context = ssl._create_unverified_context()    ##adding new congfig for es

# Ignore warnings
import warnings
from elasticsearch import ElasticsearchWarning
warnings.simplefilter('ignore', ElasticsearchWarning)


def create_es_client(hosts, username, password):
    # 创建SSL上下文，禁用证书验证
    # context = create_ssl_context()
    # context.check_hostname = False
    # context.verify_mode = ssl.CERT_NONE

    # 连接到Elasticsearch
    es = Elasticsearch(
        hosts,
        http_auth=(username, password),
        ssl_context=context
    )

    return es


def main():
    # Elasticsearch连接信息
    hosts = ['https://elasticsearch:9200']  # 替换为你的Elasticsearch地址
    username = 'elastic'  # 替换为你的用户名
    password = 'changeme'  # 替换为你的密码

    # 创建Elasticsearch客户端
    es = create_es_client(hosts, username, password)

    # 测试连接
    try:
        info = es.info()
        print("Connected to Elasticsearch")
        print(info)
    except Exception as e:
        print(f"Error connecting to Elasticsearch: {e}")


if __name__ == "__main__":
    main()
