FROM nasoym/httpd-cgi
MAINTAINER Sinan Goo

RUN apk update; apk add graphviz 
RUN apk add ttf-dejavu
RUN mkdir /tmp/images ; chmod -R go+rwx /tmp/images
VOLUME ["/tmp/images"]

COPY render /usr/local/apache2/cgi-bin/render


