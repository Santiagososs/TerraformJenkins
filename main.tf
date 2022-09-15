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

variable "simple_tag" {
  type    = string
  default = "VariableTest"

}

resource "azurerm_resource_group" "rg-terraform" {
  name     = "rg-terraform"
  location = "southcentralus"
  tags = {
    enviroment = "Dev"
    source     = "Terraform"
    owner      = "Henry"
    test       = var.simple_tag
  }
}