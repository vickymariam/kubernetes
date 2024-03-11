# Perizer Terraform Module Template Repo
This is the base Terraform Module Template Repo used for creating new Terraform modules.

## Benefits of Terraform Module
- Reusability and Standardization: Use pre-defined infrastructure components for consistent deployments.
- Consistency and Scalability: Provision infrastructure reliably and scale deployments efficiently.
- Collaboration and Efficiency: Foster collaboration, code reuse, and best practices.
- Maintainability and Upgradability: Simplify maintenance and updates of infrastructure configurations.
- Versioning and Testing: Track changes, validate functionality, and ensure compatibility.
- Governance and Compliance: Enforce governance and comply with security and industry requirements.

## Release Description
# This is a release description template that should be updated for each release.

# Terraform AzureRM Module - Release X.X.X
Release Date: YYYY-MM-DD

## Changelog
Summarize the major changes and updates made in this release. Provide a high-level overview of new features, enhancements, and bug fixes.

## New Features
- Feature 1: Description of the new feature.
- Feature 2: Description of the new feature.

## Enhancements
- Enhancement 1: Description of the enhancement.
- Enhancement 2: Description of the enhancement.

## Bug Fixes
- Bug Fix 1: Description of the bug fix.
- Bug Fix 2: Description of the bug fix.

## Breaking Changes
- List any changes that might affect the existing infrastructure or configurations. Provide guidance on how users can update their existing deployments to adapt to these changes.

## Compatibility
- Describe the compatibility of this module with different versions of Terraform, AzureRM provider, and any other dependencies.

## Installation
- Instructions and dependencies can be found in the updated README.md.

## Usage Examples
- Provide updated examples on how to use the module effectively in different scenarios.

## Documentation
- Updated README with comprehensive module usage instructions and detailed input output descriptions.
- Linked to Azure documentation for additional context and resources.

## Support
- For any questions or issues related to this module, please create a JIRA [ticket](https://perizer.atlassian.net/jira/software/c/projects/CLOUD/boards/11).


## Versioning
- [Semantic versioning](https://semver.org/#semantic-versioning-200), Given a version number MAJOR.MINOR.PATCH, increment the:
    - MAJOR version when you make incompatible API changes
    - MINOR version when you add functionality in a backward compatible manner
    - PATCH version when you make backward compatible bug fixes

---
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~>3.63.0 |
| <a name="requirement_random"></a> [random](#requirement\_random) | ~> 3.4.0 |
| <a name="requirement_time"></a> [time](#requirement\_time) | ~>0.9.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 3.63.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_container_registry.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_registry) | resource |
| [azurerm_kubernetes_cluster.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster) | resource |
| [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_role_assignment.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/role_assignment) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_container_registry_name"></a> [container\_registry\_name](#input\_container\_registry\_name) | (Required) Specifies the name of the Container Registry. Only Alphanumeric characters allowed. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_dns_prefix"></a> [dns\_prefix](#input\_dns\_prefix) | (Optional) DNS prefix specified when creating the managed cluster. Possible values must begin and end with a letter or number, contain only letters, numbers, and hyphens and be between 1 and 54 characters in length. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_dns_service_ip"></a> [dns\_service\_ip](#input\_dns\_service\_ip) | (Optional) IP address within the Kubernetes service address range that will be used by cluster service discovery (kube-dns). Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_identity_type"></a> [identity\_type](#input\_identity\_type) | (Optional) An identity block as defined below. One of either identity or service\_principal must be specified. | `string` | n/a | yes |
| <a name="input_kubernetes_cluster"></a> [kubernetes\_cluster](#input\_kubernetes\_cluster) | (Required) The name of the Managed Kubernetes Cluster to create. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_location"></a> [location](#input\_location) | (Required) The location where the Managed Kubernetes Cluster should be created. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_network_plugin"></a> [network\_plugin](#input\_network\_plugin) | (Required) Network plugin to use for networking. Currently supported values are azure, kubenet and none. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_node_count"></a> [node\_count](#input\_node\_count) | (Optional) The initial number of nodes which should exist in this Node Pool. If specified this must be between 1 and 1000 and between min\_count and max\_count. | `number` | n/a | yes |
| <a name="input_node_pool_name"></a> [node\_pool\_name](#input\_node\_pool\_name) | (Required) The name which should be used for the default Kubernetes Node Pool. | `string` | n/a | yes |
| <a name="input_pod_cidr"></a> [pod\_cidr](#input\_pod\_cidr) | (Optional) The CIDR to use for pod IP addresses. This field can only be set when network\_plugin is set to kubenet. Changing this forces a new resource to be created. | `list(string)` | n/a | yes |
| <a name="input_resource_group"></a> [resource\_group](#input\_resource\_group) | (Required) The name of the Managed Kubernetes Cluster to create. Changing this forces a new resource to be created. | `string` | n/a | yes |
| <a name="input_role_definition_name"></a> [role\_definition\_name](#input\_role\_definition\_name) | (Optional) The name of a built-in Role. Changing this forces a new resource to be created. Conflicts with role\_definition\_id | `string` | n/a | yes |
| <a name="input_service_cidr"></a> [service\_cidr](#input\_service\_cidr) | (Optional) The Network Range used by the Kubernetes service. Changing this forces a new resource to be created. | `list(string)` | n/a | yes |
| <a name="input_sku"></a> [sku](#input\_sku) | (Required) The SKU name of the container registry. Possible values are Basic, Standard and Premium | `string` | n/a | yes |
| <a name="input_vm_size"></a> [vm\_size](#input\_vm\_size) | (Required) The size of the Virtual Machine, such as Standard\_DS2\_v2. temporary\_name\_for\_rotation must be specified when attempting a resize. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->