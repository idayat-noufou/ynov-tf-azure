# Public IPs
resource "azurerm_public_ip" "${var.prefix}-ip" {
  name                = "${var.prefix}-ip"
  location            = azurerm_resource_group.${var.prefix}-rg.location
  resource_group_name = azurerm_resource_group.${var.prefix}-rg.name
  allocation_method   = "Dynamic"

  tags = {
    environment = "${var.environment}"
    owner       = "${var.prefix}"
    label       = "Public IP"
    project     = "${var.project}"
  }
}

output "public_ip" {
  value = azurerm_public_ip.${var.prefix}-ip.ip_address
}
