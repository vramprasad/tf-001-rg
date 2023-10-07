variable "resource_group_name" {
    type = string
    description = "Name of the resource group"
    default = "rp041-d1-rg"
}

variable "res_location" {
    type = string
    description = "Location"
    default = "west europe"
}

variable "tfs_RG" {
    type = string
    description = "TF State Resource Group"
    default = "rp0041-rg"
}

variable "tfs_storageaccount" {
    type = string
    description = "TF State Storage account"
    default = "rp0041sa"
}

variable "tfs_container" {
    type = string
    description = "TF State Container"
    default = "tfstate"
}

variable "tfs_key" {
    type = string
    description = "TF State Key"
    default = "terraform.dev.tfstate"
}

variable "KeyVault" {
    type = string
    description = "TF State Resource Group"
    default = "rp0041-rg"
}


