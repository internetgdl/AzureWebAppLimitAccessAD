#Connect to Azure to create a WebApp

#Access Variables

$vUserName = "xxxxxxxxxxxxxxxxxxx"
$vPassword = "xxxxxxxxxxxxxxxxx"
$vTentant = "xxxxxxxxxxxxxxxx"
$directory = "xxxxxxxxxxx"
$region = "eastus"

$resourceGroupName = "limitaccess"
$webAppName = "examplelimitaccess"
$webAppPlanName = "examplelimitaccess"
$sku ="B2"
$runtime = "DOTNETCORE:6.0"
#Login as Service Principal
az login --service-principal -u $vUserName -p $vPassword --tenant $vTentant | Out-null
#Set Subscription
az account set --subscription $directory
#Create resource group 
az group create --name $resourceGroupName --location $region
#Create App Service Plan
az appservice plan create --name $webAppPlanName --resource-group $resourceGroupName --is-linux --sku $sku --location $region
#Create Web App
az webapp create --name $webAppName --resource-group $resourceGroupName --plan $webAppPlanName --runtime $runtime --deployment-local-git
