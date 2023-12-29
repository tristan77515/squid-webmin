FROM ubuntu/squid:latest
USER root
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install curl wget gnupg gnupg1 gnupg2  -y
RUN curl -o setup-repos.sh https://raw.githubusercontent.com/webmin/webmin/master/setup-repos.sh
RUN echo "deb http://download.webmin.com/download/repository sarge contrib" >> /etc/apt/sources.list
RUN wget -qO - http://www.webmin.com/jcameron-key.asc | apt-key add -
RUN apt-get update -y
RUN apt-get install webmin -y --install-recommends
