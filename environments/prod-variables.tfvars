# Login to Azure using service principal, and set the subscription id, client id, client secret and tenant id
# service principal role need owner, because it will grant permissions to the application gateway
sp-subscription-id = 
sp-client-id = 
sp-client-secret = 
sp-tenant-id = 

# need to change to your name and environment, resource will using {name}-{environment} as prefix
name = "dify"
environment = "prod"
location = "eastus2"

#subnet

#================================================================================================
# Networks
#================================================================================================
vnet = "10.11.0.0/16"
subnets = [
  {
    name           = "snet-aks"
    address_prefix = "10.11.1.0/24"
  },
  {
    name           = "snet-appgw"
    address_prefix = "10.11.2.0/24"
  },
  {
    name           = "snet-db"
    address_prefix = "10.11.3.0/24"
  }
]


#redis
# Redis Cache
redis_cache_capacity               = 4
redis_cache_family                 = "C" 
redis_cache_sku                    = "Basic"
redis_public_network_access_enabled= true



# PostgreSQL
pgsql_sku_name                       = "B_Standard_B8ms"
pgsql_admin_login                    = "postgres"
pgsql_admin_password                 = "Test1234t"
pgsql_version                        = "16"
pgsql_storage_mb                     = "262144"
pg_zone                                 = "1"

# aks
kubernetes_version = "1.28.9"
node_count = 2
vm_size = "Standard_D4ds_v5"
max_pods = 110

# path to kubeconfig file
filename = "config"

