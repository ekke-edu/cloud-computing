# 1. Action Group: Kiket értesítsünk?
resource "azurerm_monitor_action_group" "admins" {
  name                = "ag-critical-alerts"
  resource_group_name = azurerm_resource_group.example.name
  short_name          = "SysAdmins"

  email_receiver {
    name          = "sendtoadmin"
    email_address = "admin@cegem.hu"
  }
  
  # SMS-t is küldhetnénk:
  # sms_receiver {
  #   name         = "smsadmin"
  #   country_code = "36"
  #   phone_number = "301234567"
  # }
}

# 2. Metric Alert: Ha a VM CPU használata magas
resource "azurerm_monitor_metric_alert" "vm_cpu_alert" {
  name                = "alert-vm-high-cpu"
  resource_group_name = azurerm_resource_group.example.name
  scopes              = [azurerm_linux_virtual_machine.vm.id] # A korábbi VM ID-ja
  description         = "Riasztás, ha a CPU átlépi a 75%-ot"

  criteria {
    metric_namespace = "Microsoft.Compute/virtualMachines"
    metric_name      = "Percentage CPU"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = 75
  }

  action {
    action_group_id = azurerm_monitor_action_group.admins.id
  }
}