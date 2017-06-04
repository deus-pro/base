# Base image for plussell projects
# Based on centos 7
FROM centos:7

MAINTAINER plussell dev team <devteam@plussell.org>

# Install packages necessary to run EAP
RUN yum update -y && yum -y install xmlstarlet saxon augeas bsdtar unzip && yum clean all

# Create a user and group used to launch processes
RUN useradd -b /opt -m liferay

# Set working directory to liferay's home directory
WORKDIR /opt/liferay
