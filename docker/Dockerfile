FROM ubuntu:latest

WORKDIR /data

COPY dependencies_installation.sh /data/docker/
COPY firefox_installation.sh /data/docker/
COPY geckodriver_installation.sh /data/docker/
COPY libraries_installation.sh /data/docker/

RUN apt update && apt upgrade -y
RUN bash docker/dependencies_installation.sh
RUN bash docker/firefox_installation.sh
RUN bash docker/geckodriver_installation.sh
RUN bash docker/libraries_installation.sh
