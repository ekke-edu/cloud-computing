# Zárolás az egész Resource Group-ra
resource "azurerm_management_lock" "rg_lock" {
  name       = "vedelem-a-torles-ellen"
  scope      = azurerm_resource_group.example.id
  lock_level = "CanNotDelete" # Vagy "ReadOnly"
  notes      = "Ez a prod környezet, ne töröld véletlenül!"
}