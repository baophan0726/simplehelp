FROM ubuntu:14.04
MAINTAINER Bao Phan "baophan@us.im.com"

RUN mkdir -p /opt/simplehelp/
ADD SimpleHelp-linux-amd64.tar.gz /opt/simplehelp/
ADD startServer.sh /opt/simplehelp/SimpleHelp/

WORKDIR /opt/simplehelp/SimpleHelp/
RUN chmod +x /opt/simplehelp/SimpleHelp/
RUN chmod +x /opt/simplehelp/SimpleHelp/startServer.sh

ENTRYPOINT  ["/opt/simplehelp/SimpleHelp/startServer.sh"] 

EXPOSE 443
EXPOSE 80
