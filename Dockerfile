FROM nasoym/httpd-cgi
MAINTAINER Sinan Goo

RUN apk update; apk add graphviz 
RUN apk add ttf-dejavu

COPY render /usr/local/apache2/cgi-bin/render


