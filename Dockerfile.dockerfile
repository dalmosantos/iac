FROM jboss/base:latest
#MAINTAINER 

# User root user to install software
USER root

# Install necessary packages
RUN yum update -y && \
    yum -y install xmlstarlet saxon augeas bsdtar unzip zip net-tools telnet supervisor && \
    yum -y install java-1.8.0-openjdk wget ca-certificates unzip sudo openssh-client && \
    yum clean all 
RUN rm -rf /tmp/*.* /var/cache/yum

# Set the JAVA_HOME variable to make it clear where Java is located
ENV JAVA_HOME /usr/lib/jvm/java