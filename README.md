<center><img src="https://raw.githubusercontent.com/colav/colav.github.io/master/img/Logo.png"/></center>

# sds-docker
SecSalud Dockerfiles to create images

# Build images
Take a look at README.md at folder images.

# Testing
To test the system package locally, docker and docker-compose is required.
* https://docs.docker.com/engine/install/ubuntu/
* docker-compse:  `apt install docker-compose`
* https://docs.docker.com/engine/install/linux-postinstall/

Run in the folder `sds-docker`

```bash
docker-compose up
``` 

And open in your browser: [http://localhost](http://localhost). The full working application would appears there.


# Azure Deploy
Install azure cli
* https://docs.microsoft.com/fr-fr/cli/azure/install-azure-cli-linux?pivots=apt

login

`
az login
`

set the right subscription

`
az account list --output table
`

`
az account set --subscription xxxxxx-yyyyy-zzzzzzz
`

create a plan (https://azure.microsoft.com/en-us/pricing/details/app-service/linux/)

`
az appservice plan create --name sdsAppServicePlan --resource-group RG-AEU-SDS-QA-OBSE --sku B3 --is-linux
`

Deploy the app

`
az webapp create --resource-group RG-AEU-SDS-QA-OBSE --plan sdsAppServicePlan --name sds-investigacion --multicontainer-config-type compose --multicontainer-config-file docker-compose.yml
`


**NOTE**:

It takes a while starting the service in azure,
you can check at https://sds-investigacion.azurewebsites.net/app

# Appendix
Some docker commands:
* Be sure that the service is running → `service docker start`
* Shut down all the docker services before a new `docker-compose up` →  docker-compose down 
* List images → `docker images` 
* Delete image → `docker image rm [IMAGE ID]`
