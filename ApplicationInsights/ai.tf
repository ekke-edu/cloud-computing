# Application Insights összekötése a Log Analytics-szel
resource "azurerm_application_insights" "appinsights" {
  name                = "appi-az900-web-monitor"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  workspace_id        = azurerm_log_analytics_workspace.logs.id
  application_type    = "web"
}

# (Opcionális) Frissíthetjük a korábbi Web App-ot, hogy használja ezt
# resource "azurerm_linux_web_app" "webapp" {
#   ...
#   app_settings = {
#     "APPINSIGHTS_INSTRUMENTATIONKEY" = azurerm_application_insights.appinsights.instrumentation_key
#   }
# }