resource "azurerm_storage_account" "storage" {
  name                     = "staz900uniquedemo" # Globálisan egyedinek kell lennie!
  resource_group_name      = azurerm_resource_group.example.name
  location                 = azurerm_resource_group.example.location
  account_tier             = "Standard"
  account_replication_type = "LRS" # Local Redundant Storage
}