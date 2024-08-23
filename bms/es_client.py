from elasticsearch import Elasticsearch
# from elasticsearch.connection import create_ssl_context
import ssl


context = ssl._create_unverified_context()    ##adding new congfig for es

# Ignore warnings
import warnings
from elasticsearch import ElasticsearchWarning
warnings.simplefilter('ignore', ElasticsearchWarning)


def create_es_client(hosts, username, password):

    es = Elasticsearch(
        hosts,
        http_auth=(username, password),
        ssl_context=context
    )

    return es


def main():
    hosts = ['https://elasticsearch:9200']  #replace to your host
    username = 'elastic'  #replace
    password = 'changeme'  #replace

    es = create_es_client(hosts, username, password)

    try:
        info = es.info()
        print("Connected to Elasticsearch")
        print(info)
    except Exception as e:
        print(f"Error connecting to Elasticsearch: {e}")


if __name__ == "__main__":
    main()
