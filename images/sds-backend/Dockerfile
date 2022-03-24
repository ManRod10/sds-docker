FROM ubuntu:focal

RUN apt-get update

RUN DEBIAN_FRONTEND=noninteractive apt-get -y  install nodejs npm

RUN DEBIAN_FRONTEND=noninteractive apt-get -y  install python3 python3-dev python3-pip git

RUN apt-get clean

RUN npm install -g apidoc@0.29.0

WORKDIR /

RUN git clone -b main https://github.com/colav/sds-backend

WORKDIR /sds-backend

RUN pip install .

RUN pip install pymongo==3.7.0

EXPOSE 8080

#https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#entrypoint
ENTRYPOINT ["sds_server"]
CMD ["--db","colombia","--db_ip","sds_mongodb"]
