FROM ubuntu:focal

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get -y  install curl git

RUN curl -sL https://deb.nodesource.com/setup_14.x | bash -

RUN DEBIAN_FRONTEND=noninteractive apt-get -y  install nodejs

RUN apt-get clean

WORKDIR /

RUN git clone -b develop https://github.com/colav/sds-ui

WORKDIR /sds-ui

RUN npm install

ENV LISTEN_PORT=3000

#esto se tiene que cambiar para poder puerto de salida como parametro
#de momento dejo la variable de ambien en 3000 para que funcione.
EXPOSE $LISTEN_PORT

ENV SDS_BACKEND_URL=""

#https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#entrypoint
ENTRYPOINT ["npm"]
CMD ["start"]
