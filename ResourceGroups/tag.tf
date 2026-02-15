# Resource Group címkézése (Módosítjuk az 1. lépés kódját)
resource "azurerm_resource_group" "example_tagged" {
  name     = "rg-az900-governance"
  location = "West Europe"

  tags = {
    Environment = "Production"
    Department  = "IT"
    Owner       = "Kovacs Janos"
    Project     = "AZ-900 Demo"
  }
}