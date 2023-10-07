provider "azurerm" {
    features {}
}

terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "2.42.0"
    }
  }

  locals {
    l_tfs_RG = var.tfs_RG
    l_tfs_storageaccount = var.tfs_storageaccount
    l_tfs_container = var.tfs_container
    l_tfs_key = var.tfs_key
  }

  backend "azurerm" {
      resource_group_name  = l_tfs_RG
      storage_account_name = l_tfs_storageaccount
      container_name       = l_tfs_container
      key                  = l_tfs_key
  }
}
data "azurerm_key_vault" "rp0041-kv" {
  name                = "rp0041-kv" // KeyVault name
  resource_group_name = "rp0041-rg" // resourceGroup
}

data "azurerm_key_vault_secret" "kvsecret" {
name = "secret-app-01" // Name of secret
key_vault_id = data.azurerm_key_vault.rp0041-kv.id
}

/*resource "azurerm_resource_group" "rg" {
    name = var.resource_group_name
    location = var.res_location
}*/

output "key_from_vault" {
  value     = azurerm_key_vault_secret.kvsecret
}