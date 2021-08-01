FROM jenkins/jenkins:2.289.3-lts-jdk11

USER root

RUN apt update -y && apt upgrade -y

RUN apt install -y python3.7 && \
apt install -y python3.7-distutils

RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py && \
python3.7 get-pip.py && \
pip install ansible

USER jenkins
