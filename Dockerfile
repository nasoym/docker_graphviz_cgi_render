FROM nasoym/httpd-cgi
MAINTAINER Sinan Goo

RUN apk update; apk add graphviz 
RUN apk add ttf-dejavu ttf-opensans ttf-freefont ttf-inconsolata ttf-liberation

COPY render /usr/local/apache2/cgi-bin/render


