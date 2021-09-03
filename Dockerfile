FROM centos:latest
MAINTAINER cchetan84@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page260/eforlad.zip/var/www/html/
WORKDIR /var/www/html
RUN unzip eforlad.zip
RUN cp -rvf eforlad/* .
RUN rm -rf eforlad eforlad.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
