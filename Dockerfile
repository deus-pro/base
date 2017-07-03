# Base image for plussell projects
# Based on centos 7
FROM centos:7

MAINTAINER plussell dev team <devteam@plussell.org>

# Install packages necessary to run EAP
RUN yum install -y epel-release && \
    yum -y upgrade && \
    yum -y install xmlstarlet saxon augeas bsdtar unzip && \
    yum clean all

# Create a user and group used to launch processes
RUN useradd -r -b /opt -m -s /usr/sbin/nologin -c "Liferay user" liferay

# Set working directory to liferay's home directory
WORKDIR /opt/liferay
