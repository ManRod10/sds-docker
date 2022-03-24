FROM ubuntu:focal

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get -y  install nodejs npm

RUN DEBIAN_FRONTEND=noninteractive apt-get -y  install python3 python3-dev python3-pip git

RUN apt-get clean

RUN npm install -g apidoc@0.29.0

#RUN pip install git+https://github.com/colav/sds-backend@develop
RUN pip install git+https://github.com/grupocolav/sds-backend@develop 

WORKDIR /

RUN git clone -b develop https://github.com/grupocolav/sds-backend

WORKDIR /sds-backend

RUN pip install .

EXPOSE 8080

#https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#entrypoint
ENTRYPOINT ["sds_server"]
CMD ["--db","colombia","--db_ip","sds_mongodb"]
