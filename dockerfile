FROM  centos:latest
RUN cd /etc/yum.repos.d/
RUN sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-*
RUN sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*

RUN yum -y install java

CMD /bin/bash
MAINTAINER valdir.cruz@gmail.com
RUN yum install -y httpd \
 zip\
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page5/the-hobbit.zip /var/www/html/
WORKDIR /var/www/html/
RUN unzip the-hobbit.zip
RUN cp -rvf the-hobbit/* .
RUN rm -rf the-hobbit the-hobbit.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80 22 
