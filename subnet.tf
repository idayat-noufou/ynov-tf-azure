# Subnet
resource "azurerm_subnet" "${var.prefix}-subnet" {
  name                 = "${var.prefix}-subnet"
  resource_group_name  = azurerm_resource_group.${var.prefix}-rg.name
  virtual_network_name = azurerm_virtual_network.${var.prefix}-vnet.name
  address_prefixes     = ["10.0.2.0/24"]
}
