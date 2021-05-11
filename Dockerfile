FROM python:3.9-slim-buster

MAINTAINER Alicia Chen "aliciachen10@gmail.com"

RUN apt -y update &&\
    apt -y install python3 python3-pip

ENV PYTHON_VERSION 3.9.4

RUN python3 -m pip install --upgrade pip

 
ADD ./python_requirements.txt /
RUN python3 -m pip install -r python_requirements.txt

ADD ./data/response.csv /
ADD ./data/explanatory_subset.csv /
ADD ./model.py /
ADD ./app.py /


CMD [ "python3", "-u", "./app.py" ]
