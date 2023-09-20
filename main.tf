provider "azurerm" {
    subscription_id = "1c5a7ba3-fff1-4294-a3b2-6d8f9021c7ae"
    client_id       = "2c7853fe-0b97-4d45-a570-53863487f13a"
    client_secret   = "msA8Q~14d3xDhuJaYjSeZL31nh6u4P-smhSgkdf0"
    tenant_id       = "87cf491e-5318-4e3b-895f-023a85778c76"
    features {}
}

terraform {
  required_providers {
    azurerm = {
        source = "hashicorp/azurerm"
        version = "2.42.0"
    }
  }
}

resource "azurerm_resource_group" "rg" {
    name = var.resource_group_name
    location = var.res_location
}