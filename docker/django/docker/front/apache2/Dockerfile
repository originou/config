FROM httpd:2.4

MAINTAINER Denis Ma

#RUN touch /tmp/new_apache.conf; \
#    cat /usr/local/apache2/conf/original/httpd.conf > /tmp/new_apache.conf; \
#    echo "Include /usr/local/apache2/conf.d/docker.apache.conf" >> /tmp/new_apache.conf; \
#    mv /tmp/new_apache.conf /usr/local/apache2/conf/httpd.conf;


RUN echo "Include /usr/local/apache2/conf.d/docker.apache.conf" >> /usr/local/apache2/conf/httpd.conf;

#FROM php:7.1-apache
#
#MAINTAINER Denis Ma
#
#RUN apt-get update
#RUN a2enmod rewrite
#RUN echo 'ServerName localhost' > /etc/apache2/conf-available/server-name.conf
#RUN a2enconf server-name
