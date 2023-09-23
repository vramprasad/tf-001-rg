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
  backend "azurerm" {
      resource_group_name  = "rp0041-rg"
      storage_account_name = "rp0041sa"
      container_name       = "tfstate"
      key                  = "terraform.dev.tfstate"
  }
}

resource "azurerm_resource_group" "rg" {
    name = var.resource_group_name
    location = var.res_location
}