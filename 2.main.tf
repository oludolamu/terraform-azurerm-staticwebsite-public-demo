#Resource Group
resource "azurerm_resource_group" "resource_group" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_storage_account" "storage_account" {
  name                          = "${var.storage_account_name}${random_string.myrandom.id}"
  resource_group_name           = azurerm_resource_group.resource_group.name
  location                      = azurerm_resource_group.resource_group.location
  account_tier                  = var.storage_account_tier
  account_replication_type      = var.storage_account_replication_type
  account_kind                  = var.storage_account_kind



  tags = {
    environment = "training"
  }
}

resource "azurerm_storage_account_static_website" "static_web" {
  storage_account_id = azurerm_storage_account.storage_account.id
  error_404_document = var.static_website_error_404_document
  index_document     = var.static_website_index_document

}