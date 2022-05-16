
variable "RG" {
  type        = string
  default     = "RG"
  description = "Reasource group name"
}

variable "Vnet_address_space_prefixes" {
  type    = list(any)
  default = ["10.30.0.0/16"]
  description ="address spac for virtual network"

}
variable "private_address_space" {
  type    = list(any)
  default = ["10.30.2.0/24"]
  description ="address spac for private network"
}

variable "public_address_space" {
  type    = list(any)
  default = ["10.30.1.0/24"]
  description ="address spac for public network"
}
variable "private_subnet_name" {
  type    = string
  default = "Data_Tier"
  description ="private subnet name"
}
variable "public_subnet_name" {
  type    = string
  default = "Web_Tier"
  description ="public subnet name"

}

variable "tags" {
  type    = string
  default = "enviroment"
  description ="tags"
}
variable "VnetName" {
  type        = string
  default     = "Vnet"
  description = "virtual network name"

}

variable "location" {
  type        = string
  description = "Azure location of terraform server environment"
  default     = "East US"

}

variable "admin_user_name" {
  type        = string
  description = "user name for vm login"
  default     = "Input your user name"

}
variable "admin_password" {
  type        = string
  description = "password for vm login"
  default     = "Input your password here"

}
variable "linux_vm_Name" {
  type        = string
  default     = "Agent"
  description = "virtual machine name"

}
variable "linux_vm_nic_Name" {
  type        = string
  default     = "linux_vm_nic"
  description = "Agent Controller nic name"
}

variable "linux_vm_Ip_name" {
  type        = string
  default     = "linux_vm_Ip"
  description = "Agent Controller Ip name"
}

variable "storage_account_Name" {
  type    = string
  default = "odedstorage1"
  description ="storage account name for azure storage for terraform backend"
}

variable "node_count" {
  default = 3
  description ="nuber of cluster nodes"
}

variable "cluster_name" {
  type    = string
  default = "k8s-weight-tracker"
  description ="kubernates cluster name"
}

variable "kubernetes_version" {
  type    = string
  default = "1.23.5"
  description ="terrafom provider version"
}

variable "acr_name" {
  type    = string
  default = "acrforapp"
  description ="azure container reg name"
}


variable "okta_secret" {
  type    = string
  default = ""
  description ="oktak secret"
}
variable "appId" {
  type    = string
  description = "AppID from az login forAzure Kubernetes Service Cluster service principal"
}

variable "password" {
  type    = string
  description = "Password from az login Azure Kubernetes Service Cluster password"
}

variable "okta_client_id" {
  type    = string
  default = ""
  description = "okta_client_id"

}

variable "okta_org_url" {
  type    = string
  default = ""
  description = "okta_org_url"
}

variable "okta_key" {
  default = ""
  description = "okta_key for okta redirect auto update"

}

variable "pg_user" {
  type    = string
  default = "postgres"
  description = "postgres user name for env variable"
}

variable "pg_pass" {
  type    = string
  default = ""
  description = "postgres password for env variable"
}