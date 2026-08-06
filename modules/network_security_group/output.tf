output "nsg_name" {

  value = {
    for k, v in azurerm_network_security_group.nsg :
    k => v.name
  }

}