FROM centos:latest
ENV GOSU_VERSION 1.10
RUN set -x 
RUN yum update -y
