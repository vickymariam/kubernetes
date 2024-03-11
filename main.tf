resource "azurerm_resource_group" "this" {
  name     = var.resource_group
  location = var.location
}

resource "azurerm_container_registry" "this" {
  name                = var.container_registry_name
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  sku                 = var.sku
}

resource "azurerm_kubernetes_cluster" "this" {
  name                = var.kubernetes_cluster
  location            = azurerm_resource_group.this.location
  resource_group_name = azurerm_resource_group.this.name
  dns_prefix          = var.dns_prefix


  default_node_pool {
    name       = var.node_pool_name
    node_count = var.node_count
    vm_size    = var.vm_size
  }

  identity {
    type = var.identity_type
  }
  network_profile {
    network_plugin = var.network_plugin
    pod_cidr       = var.pod_cidr[0]
    dns_service_ip = var.dns_service_ip
    service_cidr   = var.service_cidr[0]

  }
}

resource "azurerm_role_assignment" "this" {
  principal_id                     = azurerm_kubernetes_cluster.this.kubelet_identity[0].object_id
  role_definition_name             = var.role_definition_name
  scope                            = azurerm_container_registry.this.id
  skip_service_principal_aad_check = true
}

