# Riasztás Service Health eseményekre (pl. karbantartás, leállás)
resource "azurerm_monitor_activity_log_alert" "service_health" {
  name                = "alert-service-health"
  resource_group_name = azurerm_resource_group.example.name
  scopes              = [data.azurerm_subscription.current.id] # A teljes előfizetésre vonatkozik
  description         = "Értesítés Azure leállásokról és karbantartásról"

  criteria {
    category = "ServiceHealth" 
    # Itt szűrhetnénk régiókra vagy szolgáltatásokra is
    # service_health {
    #   locations = ["West Europe"]
    # }
  }

  action {
    action_group_id = azurerm_monitor_action_group.admins.id
  }
}

# Szükséges adatforrás az előfizetés ID lekéréséhez
data "azurerm_subscription" "current" {}