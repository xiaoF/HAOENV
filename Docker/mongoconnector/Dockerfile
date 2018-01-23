#This will prepare a elasticsearch node with mongo-connector enabled

FROM python:3.4.3

ENV DEBIAN_FRONTEND noninteractive
ENV TZ Asia/Shanghai

# Installing Mongo Connector which will connect MongoDB and Elasticsearch
RUN pip install mongo-connector

ADD mongoconnector.sh /usr/bin/mongoconnector
RUN chmod +x /usr/bin/mongoconnector

