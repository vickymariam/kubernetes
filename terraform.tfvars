resource_group = "aks-demo-rg"

location = "eastus2"

kubernetes_cluster = "aks-demo"

dns_prefix = "akscluster"

node_pool_name = "aksnodepool1"

node_count = 1

vm_size = "Standard_D2_v2"

identity_type = "SystemAssigned"

network_plugin = "kubenet"

pod_cidr = ["10.0.0.0/16"]

dns_service_ip = "10.2.0.10"

service_cidr = ["10.2.0.0/24"]

container_registry_name = "ContainerRegPerizer"

sku = "Premium"

role_definition_name = "AcrPull"





