FROM ubuntu:18.04

WORKDIR /

RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y postgresql-client-common postgresql-client-10 iputils-ping telnet curl \
        vim dnsutils net-tools traceroute wget openssh-client libpq-dev python3-dev python3-pip \
        unzip apt-transport-https openjdk-8-jdk tmux

RUN pip3 install psycopg2 
RUN apt-get update && \
    apt-get install -y mysql-client
