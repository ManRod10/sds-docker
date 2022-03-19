FROM ubuntu:focal

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get -y  install curl git

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -

RUN DEBIAN_FRONTEND=noninteractive apt-get -y  install nodejs
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install iputils-ping
RUN DEBIAN_FRONTEND=noninteractive apt-get -y  install apache2

RUN apt-get clean


RUN service apache2 start

RUN a2enmod proxy
RUN a2enmod proxy_http
RUN a2enmod proxy_balancer
RUN a2enmod lbmethod_byrequests
RUN a2dismod ssl
COPY 000-default.conf /etc/apache2/sites-enabled/000-default.conf

#RUN service apache2 start

WORKDIR /

RUN git clone -b develop-docker https://github.com/colav/sds-ui

WORKDIR /sds-ui

RUN npm install

ENV LISTEN_PORT=3000

#esto se tiene que cambiar para poder puerto de salida como parametro
#de momento dejo la variable de ambien en 3000 para que funcione.
EXPOSE $LISTEN_PORT

#https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#entrypoint
#ENTRYPOINT ["npm"]
#CMD ["start"]
COPY start.sh /sds-ui/start.sh
CMD ./start.sh