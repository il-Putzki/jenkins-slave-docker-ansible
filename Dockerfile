FROM jenkins/jnlp-slave:latest

LABEL Author="Maksym Kotiash max.siemens.fan@gmail.com"
LABEL MAINTAINER="Maksym Kotiash max.siemens.fan@gmail.com"
LABEL Description="This is a base Jenkins-slave JNLP image with Ansible"

USER root

RUN echo "deb http://ppa.launchpad.net/ansible/ansible/ubuntu xenial main" > /etc/apt/sources.list.d/ansible.list && \
    apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 93C4A3FD7BB9C367 && \
    apt update && \
    apt upgrade -y && \
    apt install ansible -y && \
    apt autoclean && \
    rm -rf /var/lib/apt/lists/*

USER jenkins
