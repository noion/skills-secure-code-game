FROM ubuntu:latest
LABEL authors="m.davydov"

RUN uname -a
RUN apt-get update
RUN apt-get install -y libldap2-dev libsasl2-dev
RUN apt-get install -y python3-pip
RUN pip3 install pyOpenSSL

ENTRYPOINT ["top", "-b"]