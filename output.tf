output "resource_group_name" {
  value = azurerm_resource_group.example.name
}

output "static_website_path" {
  value = azurerm_storage_account.lesson_01.primary_web_endpoint
}

output "static_website_full_url" {
  value = azurerm_storage_account.lesson_01.primary_web_endpoint
}
