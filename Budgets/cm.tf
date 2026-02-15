resource "azurerm_consumption_budget_resource_group" "budget" {
  name              = "havi-limit-100eur"
  resource_group_id = azurerm_resource_group.example_tagged.id

  amount     = 100 # A keretösszeg
  time_grain = "Monthly"

  time_period {
    start_date = "2024-06-01T00:00:00Z"
    end_date   = "2025-06-01T00:00:00Z"
  }

  # Értesítés beállítása 80%-nál
  notification {
    enabled        = true
    threshold      = 80.0
    operator       = "GreaterThan"
    threshold_type = "Actual"

    contact_emails = [
      "admin@cegem.hu",
    ]
  }
}