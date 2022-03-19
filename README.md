<center><img src="https://raw.githubusercontent.com/colav/colav.github.io/master/img/Logo.png"/></center>

# sds-docker
SecSalud Dockerfiles to create images

# Testing
To test the system package locally, docker and docker-compose is required.
* https://docs.docker.com/engine/install/ubuntu/
* https://docs.docker.com/compose/install/

Run in the folder sds-docker

`
docker-compose up
`


# Azure Deploy
Install azure cli
* https://docs.microsoft.com/fr-fr/cli/azure/install-azure-cli-linux?pivots=apt

`
az appservice plan create --name sdsAppServicePlan --resource-group sdsResourceGroup --sku B2 --is-linux
`

`

`