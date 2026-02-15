# Logikai SQL Szerver
resource "azurerm_mssql_server" "sqlserver" {
  name                         = "sql-az900-unique-server"
  resource_group_name          = azurerm_resource_group.example.name
  location                     = azurerm_resource_group.example.location
  version                      = "12.0"
  administrator_login          = "sqladmin"
  administrator_login_password = "P@ssw0rd1234!" # Élesben titkosítva tároljuk!
}

# SQL Adatbázis
resource "azurerm_mssql_database" "sqldb" {
  name           = "db-az900-demo"
  server_id      = azurerm_mssql_server.sqlserver.id
  collation      = "SQL_Latin1_General_CP1_CI_AS"
  max_size_gb    = 2
  sku_name       = "S0" # Standard tier
}