#FROM openjdk:8u191-jdk-alpine3.9
FROM centos:latest

# User root user to install software
USER root

# Install necessary packages
RUN yum repolist && yum install -y epel-release && \
    yum update -y && \
    yum -y install xmlstarlet curl saxon augeas jq bsdtar unzip zip net-tools telnet supervisor && \
    yum -y install java-1.8.0-openjdk wget openssl ca-certificates unzip sudo openssh-client && \
    yum clean all 
RUN rm -rf /tmp/*.* /var/cache/yum

# Set the JAVA_HOME variable to make it clear where Java is located
ENV JAVA_HOME /usr/lib/jvm/java