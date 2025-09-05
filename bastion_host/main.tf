resource "azurerm_bastion_host" "name" {
  name                = var.bastion_name
  location            = var.bastion_location
  resource_group_name = var.rg_name

  ip_configuration {
    name                 = var.bastion_ip_config_name
    subnet_id            = var.subnet_id
    public_ip_address_id = var.public_ip_address_id
  }
}