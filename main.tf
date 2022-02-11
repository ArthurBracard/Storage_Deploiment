  data "azurerm_resource_group" "storage" {
    name = "poc-jamf-pro"
  }

  module "azure_storage" {
    source                 = "git@ssh.dev.azure.com:v3/vikwefight/terraform-modules/azure_storage_account"
    name                   = var.name
    subnet_datas           = { id = null }
    resource_group_datas   = data.azurerm_resource_group.storage
    storage_account_config = var.storage_config
    ip_rules               = ["217.128.163.115"]
  }