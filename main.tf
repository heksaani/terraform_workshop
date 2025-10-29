resource "azurerm_resource_group" "example" {
  location = var.resource_group_location
  name     = "${var.product}-rg-${var.suffix}"
}

resource "azurerm_storage_account" "lesson_01" {
  name                     = "storageacct${var.suffix}"
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  static_website {
    index_document = "index.html"
  }

}


resource "azurerm_storage_blob" "lesson_01_web" {
  name                   = "index.html"
  storage_account_name   = azurerm_storage_account.lesson_01.name
  storage_container_name = "$web"
  type                   = "Block"
  content_type           = "text/html"
  source                 = "index.html"
}
