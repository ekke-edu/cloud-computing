# Szükségünk van az aktuális felhasználó (aki futtatja a scriptet) adataira a jogosultsághoz
data "azurerm_client_config" "current" {}

resource "azurerm_key_vault" "kv" {
  name                        = "kv-az900-unique-safe"
  location                    = azurerm_resource_group.example.location
  resource_group_name         = azurerm_resource_group.example.name
  tenant_id                   = data.azurerm_client_config.current.tenant_id
  sku_name                    = "standard"

  # Jogosultság adása önmagadnak, hogy titkokat hozhass létre benne
  access_policy {
    tenant_id = data.azurerm_client_config.current.tenant_id
    object_id = data.azurerm_client_config.current.object_id

    secret_permissions = [
      "Get", "List", "Set", "Delete"
    ]
  }
}

# Egy titkos jelszó tárolása a széfben
resource "azurerm_key_vault_secret" "database_password" {
  name         = "db-password"
  value        = "SzuperTitkosJelszo123!"
  key_vault_id = azurerm_key_vault.kv.id
}