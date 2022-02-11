############################################################
#           PRINCIPAL TERRAFORM DEPLOYMENT FILE            #
# Purpose: Deploy an OpenVPN server and his network layer  #
#                   Last Updated: 02/02/22                 #
############################################################

terraform {
  required_version = "~>1.1.3"
  experiments      = [module_variable_optional_attrs]

  backend "azurerm" {}

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.92.0"
    }
    template = {
      source  = "hashicorp/template"
      version = "~>2.2.0"
    }
  }
}

provider "azurerm" {
  features {}
}