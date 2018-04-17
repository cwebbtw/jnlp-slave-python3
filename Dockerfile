FROM jenkins/jnlp-slave:3.19-1

MAINTAINER Christopher Webb <cwebb@thoughtworks.com>

USER root

RUN apt-get update && \
	apt-get install python3 -y && \
	wget https://bootstrap.pypa.io/get-pip.py && \
	python3 get-pip.py
	
USER jenkins