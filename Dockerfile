FROM jenkins/jnlp-slave:latest

LABEL Author="Maksym Kotiash max.siemens.fan@gmail.com"
LABEL MAINTAINER="Maksym Kotiash max.siemens.fan@gmail.com"
LABEL Description="This is a base Jenkins-slave JNLP image with Ansible"

USER root

RUN apt update && \
    apt upgrade -y && \
    apt install ansible -y && \
    apt autoclean && \
    rm -rf /var/lib/apt/lists/*
