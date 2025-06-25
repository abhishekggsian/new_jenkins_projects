terraform {
  required_version = "1.12.1"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.34.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "3a734e32-021d-4243-89ff-c3495e6aa4da"
}

resource "azurerm_resource_group" "rg" {
  name     = "rg-abhi-001"
  location = "westus"
}
resource "azurerm_resource_group" "rg1" {
  name     = "rg-abhi-002"
  location = "westus"
}