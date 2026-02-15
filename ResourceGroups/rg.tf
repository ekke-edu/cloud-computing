# Resource Group létrehozása
resource "azurerm_resource_group" "example" {
  name     = "rg-az900-demo"
  location = "West Europe"
}