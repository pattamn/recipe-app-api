#From refer which image need to use 
#MAINTAINER will tell which author
#ENV to set some env variables 
#COPY copy the folders to inside the image containeters
#RUN runs the commmand inside the container
#WORKDIR makes working directory as defaulf dir
#

FROM python:3.7-alpine
MAINTAINER Narendra


ENV PYTHONBUFFERED 1 
COPY ./requirements.txt /requirements.txt 
RUN pip install -r /requirements.txt 

RUN mkdir /app 
WORKDIR /app 
COPY ./app /app 

RUN adduser -D user 
USER user 