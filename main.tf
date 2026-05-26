terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.70.0"
    }
  }

}
provider "azurerm" {
  features {}
}
resource "azurerm_resource_group" "Arrah10" {
  for_each = var.resourcergs
  name     = each.key
  location = each.value
}

resource "azurerm_storage_account" "Arrah11" {
  depends_on               = [azurerm_resource_group.Arrah10]
  for_each                 = var.storageaccounts
  name                     = each.value.name
  location                 = each.value.location
  resource_group_name      = each.value.resource_group_name
  account_tier             = each.value.account_tier
  account_replication_type = each.value.account_replication_type
}
