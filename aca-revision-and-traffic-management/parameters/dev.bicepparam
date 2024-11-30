using '../main.bicep'

param acaResourceGroupName = 'rg-aca-helloworld-neu-${environment}'
param environment = 'dev'
param location = 'Central India'

param tags = {
  application: 'aca-revision-traffic-mgmt'
  environment: environment
}
param trafficDistribution = [
  {
    latestRevision: true
    weight: 100
  }
 /* {
    revisionName: 'aca-hello-world--3h77zdz'
    weight: 50
  }*/
]

// Command to get revision names: az containerapp revision list --name aca-hello-world --resource-group rg-aca-helloworld-neu-dev --query [].name -o tsv
