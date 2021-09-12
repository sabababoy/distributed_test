FROM ubuntu

EXPOSE 22 60000 1099 50000

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update > /dev/null && \
	apt-get upgrade > /dev/null && \
	apt-get -y install openssh-server > /dev/null && \
	apt-get -y install nano > /dev/null && \
	apt -y install default-jdk > /dev/null && \
	apt-get -y install jmeter > /dev/null

WORKDIR  /home
COPY ./Scripts/ /home/
