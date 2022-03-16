# Dockerfiles
System to create docker images


## Multi-container web app for azure
https://docs.microsoft.com/en-us/azure/app-service/tutorial-multi-container-app

## Building sds-backend
`
cd sds-backend
docker build  --force-rm=true --no-cache=true -t colav/sds-backend:latest .
`

## Building sds-ui
`
cd sds-ui
docker build  --force-rm=true --no-cache=true -t colav/sds-ui:latest .
`