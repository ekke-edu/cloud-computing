# Network Security Group létrehozása
resource "azurerm_network_security_group" "nsg" {
  name                = "nsg-web-allow"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  # Szabály: Engedjük be a HTTP (80-as port) forgalmat bárhonnan
  security_rule {
    name                       = "AllowHTTP"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "80"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
}

# Az NSG összekapcsolása a korábban létrehozott alhálózattal (Subnet)
# Ez kritikus lépés! Hiába van szabályod, ha nincs hozzárendelve semmihez.
resource "azurerm_subnet_network_security_group_association" "example" {
  subnet_id                 = azurerm_subnet.subnet.id
  network_security_group_id = azurerm_network_security_group.nsg.id
}