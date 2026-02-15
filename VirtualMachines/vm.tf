# Hálózati interfész a géphez
resource "azurerm_network_interface" "nic" {
  name                = "vm-demo-nic"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}

# Maga a Virtuális Gép (Linux példa)
resource "azurerm_linux_virtual_machine" "vm" {
  name                = "vm-az900-demo"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  size                = "Standard_B1s" # Költséghatékony méret tanuláshoz
  admin_username      = "adminuser"
  network_interface_ids = [
    azurerm_network_interface.nic.id,
  ]

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
  
  # Jelszó alapú hitelesítés (csak demó célra, SSH kulcs ajánlott!)
  disable_password_authentication = false
  admin_password                  = "P@ssw0rd1234!"
}