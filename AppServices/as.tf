# App Service Plan
resource "azurerm_service_plan" "app_plan" {
  name                = "plan-az900-demo"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  os_type             = "Linux"
  sku_name            = "F1" # Free tier - ingyenes, tökéletes tanuláshoz
}

# Web App
resource "azurerm_linux_web_app" "webapp" {
  name                = "webapp-az900-unique-demo" # Egyedinek kell lennie globálisan!
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  service_plan_id     = azurerm_service_plan.app_plan.id

  site_config {
    # Itt állítod be pl. a futtatókörnyezetet (Node, Python, .NET, stb.)
    always_on = false # Free tier-ben false-nak kell lennie
  }
}