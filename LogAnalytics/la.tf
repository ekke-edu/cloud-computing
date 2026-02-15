# Log Analytics Workspace létrehozása
resource "azurerm_log_analytics_workspace" "logs" {
  name                = "law-az900-central-logs"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  sku                 = "PerGB2018" # Használat alapú számlázás
  retention_in_days   = 30          # 30 napig őrizzük meg az adatokat
}