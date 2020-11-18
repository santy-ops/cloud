FROM centos:latest
MAINTAINER santoshpatel17@gamil.com
RUN yum install -y httpd \
 zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page259/digitco.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip digitco.zip
RUN cp -rvf digitco/* .
RUN rm -rf  digitco digitco.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUD"]
EXPOSE 80
