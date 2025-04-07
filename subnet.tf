# Subnet
resource "azurerm_subnet" "ynov1-subnet" {
  name                 = "${var.prefix}-subnet"
  resource_group_name  = azurerm_resource_group.ynov1-rg.name
  virtual_network_name = azurerm_virtual_network.ynov1-vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}
