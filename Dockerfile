#Set the base image
FROM centos:7

#Docker file author
MAINTAINER lohith

RUN sed -i '$i proxy=http://192.168.11.1:3128' /etc/yum.conf

# Instaling Bind Utils
RUN yum -y install bind bind-utils telnet net-tools


#Expose Ports
EXPOSE 53/tcp 53/udp


#Running Dns Server

CMD /usr/sbin/named -u named -g -c /etc/named.conf
