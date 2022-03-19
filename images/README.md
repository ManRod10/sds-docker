# Dockerfiles
System to create docker images


## Multi-container web app for azure
https://docs.microsoft.com/en-us/azure/app-service/tutorial-multi-container-app


## Building sds-mongodb
The first step is to copy the dump folder to sds-mongodb
and run.

`
cd sds-mongodb 
docker build  --force-rm=true --no-cache=true -t colav/sds-mongodb:latest .
docker push colav/sds-mongodb:latest
`

## Building sds-backend
`
cd sds-backend
docker build  --force-rm=true --no-cache=true -t colav/sds-backend:latest .
docker push colav/sds-backend:latest
`

## Building sds-ui
`
cd sds-ui
docker build  --force-rm=true --no-cache=true -t colav/sds-ui:latest .
docker push colav/sds-ui:latest
`


