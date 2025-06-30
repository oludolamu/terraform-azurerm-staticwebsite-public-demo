output "root_storage_account_name" {
  value = azurerm_storage_account.storage_account.name

}

output "root_resource_group_name" {
  value = azurerm_resource_group.resource_group.name

}

output "root_resource_group_location" {
  value = azurerm_resource_group.resource_group.location
  
}

output "root_resource_group_id" {
  value = azurerm_resource_group.resource_group.id
}