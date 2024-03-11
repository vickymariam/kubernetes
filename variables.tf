variable "resource_group" {
  type        = string
  description = " (Required) The name of the Managed Kubernetes Cluster to create. Changing this forces a new resource to be created."
}

variable "location" {
  type        = string
  description = "  (Required) The location where the Managed Kubernetes Cluster should be created. Changing this forces a new resource to be created."
}

variable "kubernetes_cluster" {
  type        = string
  description = "(Required) The name of the Managed Kubernetes Cluster to create. Changing this forces a new resource to be created."
}

variable "dns_prefix" {
  type        = string
  description = " (Optional) DNS prefix specified when creating the managed cluster. Possible values must begin and end with a letter or number, contain only letters, numbers, and hyphens and be between 1 and 54 characters in length. Changing this forces a new resource to be created."
}

variable "node_pool_name" {
  type        = string
  description = " (Required) The name which should be used for the default Kubernetes Node Pool."
}

variable "node_count" {
  type        = number
  description = " (Optional) The initial number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000 and between min_count and max_count."
}

variable "vm_size" {
  type        = string
  description = " (Required) The size of the Virtual Machine, such as Standard_DS2_v2. temporary_name_for_rotation must be specified when attempting a resize."
}
variable "identity_type" {
  type        = string
  description = "  (Optional) An identity block as defined below. One of either identity or service_principal must be specified."
}

variable "network_plugin" {
  type        = string
  description = "(Required) Network plugin to use for networking. Currently supported values are azure, kubenet and none. Changing this forces a new resource to be created."
}

variable "pod_cidr" {
  type        = list(string)
  description = "(Optional) The CIDR to use for pod IP addresses. This field can only be set when network_plugin is set to kubenet. Changing this forces a new resource to be created."
}

variable "service_cidr" {
  type        = list(string)
  description = "(Optional) The Network Range used by the Kubernetes service. Changing this forces a new resource to be created."
}

variable "container_registry_name" {
  type        = string
  description = "(Required) Specifies the name of the Container Registry. Only Alphanumeric characters allowed. Changing this forces a new resource to be created."

}

variable "sku" {
  type        = string
  description = " (Required) The SKU name of the container registry. Possible values are Basic, Standard and Premium"

}

variable "role_definition_name" {
  type        = string
  description = "(Optional) The name of a built-in Role. Changing this forces a new resource to be created. Conflicts with role_definition_id"

}

variable "dns_service_ip" {
  type        = string
  description = " (Optional) IP address within the Kubernetes service address range that will be used by cluster service discovery (kube-dns). Changing this forces a new resource to be created."
}