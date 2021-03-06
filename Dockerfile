FROM python:3.9-slim-buster

MAINTAINER Alicia Chen "aliciachen10@gmail.com"

RUN apt -y update &&\
    apt -y install python3 python3-pip

ENV PYTHON_VERSION 3.9.4

RUN python3 -m pip install --upgrade pip

COPY . .
#ADD ./python_requirements.txt /
RUN python3 -m pip install -r python_requirements.txt

#EXPOSE 5000

#ADD ./data/response.csv /
#ADD ./data/explanatory_subset.csv /
#ADD ./templates ./templates 
#ADD ./model.pkl /
#ADD ./model.py /
#ADD ./app.py /

#ADD run.sh /run.sh
#RUN chmod a+x run.sh

CMD [ "python3", "-u", "./app.py" ]

#CMD ["sh","-c","python3 model.py && python3 app.py"] #WORKING VERSION

#CMD ["python3 model.py && python3 app.py"]