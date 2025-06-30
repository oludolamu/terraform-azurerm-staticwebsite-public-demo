# Terraform Block
terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.0"
    }
  }
}

# Provider Block
provider "azurerm" {
  features {}

  subscription_id = "42782951-184f-409c-b873-b417c0b14193"

}

# Random String Resource
resource "random_string" "myrandom" {
  length  = 6
  upper   = false
  special = false
  numeric = true
}