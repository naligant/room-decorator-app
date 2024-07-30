#instantiate Ubuntu 20.04
FROM ubuntu:20.04
LABEL maintainer "Prajeeth Naliganti"
LABEL description="This is a custom Docker Image"

#Update Ubuntu Software repository
RUN apt update
RUN apt -y install python3-pip
RUN apt -y install vim

#Add the flask application and install requirements
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN pip install --upgrade