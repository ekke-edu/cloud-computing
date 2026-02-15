# 1. lépés: Definiáljuk a szabályt (Csak West Europe engedélyezett)
resource "azurerm_policy_definition" "location_policy" {
  name         = "only-west-europe"
  policy_type  = "Custom"
  mode         = "All"
  display_name = "Engedélyezett helyek korlátozása"

  metadata = <<METADATA
    {
      "category": "General"
    }
  METADATA

  policy_rule = <<POLICY_RULE
    {
      "if": {
        "not": {
          "field": "location",
          "in": ["West Europe"]
        }
      },
      "then": {
        "effect": "deny"
      }
    }
  POLICY_RULE
}

# 2. lépés: Hozzárendeljük a szabályt a Resource Group-hoz
resource "azurerm_resource_group_policy_assignment" "assign_policy" {
  name                 = "apply-location-restriction"
  resource_group_id    = azurerm_resource_group.example_tagged.id
  policy_definition_id = azurerm_policy_definition.location_policy.id
}