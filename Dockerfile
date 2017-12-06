FROM nasoym/httpd-cgi
MAINTAINER Sinan Goo

RUN apk update; apk add graphviz 
RUN apk add ttf-dejavu
RUN apk update; apk add jq python2 py2-pip 
RUN pip install j2cli dot2tex tikz2pdf

RUN mkdir /tmp/images ; chmod -R go+rwx /tmp/images
VOLUME ["/tmp/images"]

COPY render /usr/local/apache2/cgi-bin/render


