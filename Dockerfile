From centos:latest
MAINTAINER santoshpatel17@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page261/avalon.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip avalon.zip
RUN cp -rvf avalon.zip/* .
RUN rm -rf avalon.zip
CMD ["/usr/sbin/httpd", " -D", "FOREGROUND"]
EXPOSE 80
