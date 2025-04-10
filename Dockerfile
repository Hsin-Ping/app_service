FROM ubuntu:20.04

WORKDIR ./

RUN apt-get update
RUN apt-get install -y python3.8 python3-pip
RUN apt-get clean
RUN pip3 install flask

ADD . ./agri

CMD ["/bin/bash", "./agri/start.sh"]
