terraform {
  required_providers {
    azurerm = {
      source  = "azurerm"
      version = "2.92.0"
    }
  }

  required_version = ">= 1.1.0"
}
provider "azurerm" {
  features {}
}

data "azurerm_resource_group" "storage" {
  name = "poc-jamf-pro"
}

module "azure_storage" {
source = "../azure_storage_account"
name = var.name
subnet_datas = {id = null}
resource_group_datas = data.azurerm_resource_group.storage
storage_account_config = var.storage_config
ip_rules = ["217.128.163.115"]
}