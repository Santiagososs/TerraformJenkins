terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg-terraform" {
  name     = "rg-terraform"
  location = "southcentralus"
  tags = {
    enviroment = "Dev"
    source     = "Terraform"
    owner      = "Henry"
    Builder    = "Jenkins Webhook"
  }
}