FROM harbor.beautytiger.home/docker.io/ubuntu:20.04
MAINTAINER beautytiger
COPY ./conf /opt/conf
COPY ./static /opt/static
COPY ./views /opt/views
COPY bin/k8-web-terminal /opt/k8-web-terminal
WORKDIR /opt/
CMD ["/opt/k8-web-terminal"]