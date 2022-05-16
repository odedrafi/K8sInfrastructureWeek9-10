<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.1.0 |
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | ~> 2.65 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | 2.99.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_Agent"></a> [Agent](#module\_Agent) | ./Modules/Linux_vm | n/a |
| <a name="module_RG"></a> [RG](#module\_RG) | ./Modules/resource_group | n/a |
| <a name="module_Subnets"></a> [Subnets](#module\_Subnets) | ./Modules/subnets | n/a |
| <a name="module_Vnet"></a> [Vnet](#module\_Vnet) | ./Modules/virtual_net | n/a |
| <a name="module_azurerm_storage_blob"></a> [azurerm\_storage\_blob](#module\_azurerm\_storage\_blob) | ./Modules/azurerm_storage_blob | n/a |

## Resources

| Name | Type |
|------|------|
| [azurerm_container_registry.acrforapp](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_registry) | resource |
| [azurerm_kubernetes_cluster.k8s](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/kubernetes_cluster) | resource |
| [azurerm_network_security_group.NSG1](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/network_security_group) | resource |
| [azurerm_subnet_network_security_group_association.NSG1](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet_network_security_group_association) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_RG"></a> [RG](#input\_RG) | Reasource group name | `string` | `"RG"` | no |
| <a name="input_VnetName"></a> [VnetName](#input\_VnetName) | virtual network name | `string` | `"Vnet"` | no |
| <a name="input_Vnet_address_space_prefixes"></a> [Vnet\_address\_space\_prefixes](#input\_Vnet\_address\_space\_prefixes) | address spac for virtual network | `list(any)` | <pre>[<br>  "10.30.0.0/16"<br>]</pre> | no |
| <a name="input_acr_name"></a> [acr\_name](#input\_acr\_name) | azure container reg name | `string` | `"acrforapp"` | no |
| <a name="input_admin_password"></a> [admin\_password](#input\_admin\_password) | password for vm login | `string` | `"Input your password here"` | no |
| <a name="input_admin_user_name"></a> [admin\_user\_name](#input\_admin\_user\_name) | user name for vm login | `string` | `"Input your user name"` | no |
| <a name="input_appId"></a> [appId](#input\_appId) | AppID from az login forAzure Kubernetes Service Cluster service principal | `string` | n/a | yes |
| <a name="input_cluster_name"></a> [cluster\_name](#input\_cluster\_name) | kubernates cluster name | `string` | `"k8s-weight-tracker"` | no |
| <a name="input_kubernetes_version"></a> [kubernetes\_version](#input\_kubernetes\_version) | terrafom provider version | `string` | `"1.23.5"` | no |
| <a name="input_linux_vm_Ip_name"></a> [linux\_vm\_Ip\_name](#input\_linux\_vm\_Ip\_name) | Agent Controller Ip name | `string` | `"linux_vm_Ip"` | no |
| <a name="input_linux_vm_Name"></a> [linux\_vm\_Name](#input\_linux\_vm\_Name) | virtual machine name | `string` | `"Agent"` | no |
| <a name="input_linux_vm_nic_Name"></a> [linux\_vm\_nic\_Name](#input\_linux\_vm\_nic\_Name) | Agent Controller nic name | `string` | `"linux_vm_nic"` | no |
| <a name="input_location"></a> [location](#input\_location) | Azure location of terraform server environment | `string` | `"East US"` | no |
| <a name="input_node_count"></a> [node\_count](#input\_node\_count) | nuber of cluster nodes | `number` | `3` | no |
| <a name="input_okta_client_id"></a> [okta\_client\_id](#input\_okta\_client\_id) | okta\_client\_id | `string` | `""` | no |
| <a name="input_okta_key"></a> [okta\_key](#input\_okta\_key) | okta\_key for okta redirect auto update | `string` | `""` | no |
| <a name="input_okta_org_url"></a> [okta\_org\_url](#input\_okta\_org\_url) | okta\_org\_url | `string` | `""` | no |
| <a name="input_okta_secret"></a> [okta\_secret](#input\_okta\_secret) | oktak secret | `string` | `""` | no |
| <a name="input_password"></a> [password](#input\_password) | Password from az login Azure Kubernetes Service Cluster password | `string` | n/a | yes |
| <a name="input_pg_pass"></a> [pg\_pass](#input\_pg\_pass) | postgres password for env variable | `string` | `""` | no |
| <a name="input_pg_user"></a> [pg\_user](#input\_pg\_user) | postgres user name for env variable | `string` | `"postgres"` | no |
| <a name="input_private_address_space"></a> [private\_address\_space](#input\_private\_address\_space) | address spac for private network | `list(any)` | <pre>[<br>  "10.30.2.0/24"<br>]</pre> | no |
| <a name="input_private_subnet_name"></a> [private\_subnet\_name](#input\_private\_subnet\_name) | private subnet name | `string` | `"Data_Tier"` | no |
| <a name="input_public_address_space"></a> [public\_address\_space](#input\_public\_address\_space) | address spac for public network | `list(any)` | <pre>[<br>  "10.30.1.0/24"<br>]</pre> | no |
| <a name="input_public_subnet_name"></a> [public\_subnet\_name](#input\_public\_subnet\_name) | public subnet name | `string` | `"Web_Tier"` | no |
| <a name="input_storage_account_Name"></a> [storage\_account\_Name](#input\_storage\_account\_Name) | n/a | `string` | `"odedstorage1"` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | tags | `string` | `"enviroment"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->