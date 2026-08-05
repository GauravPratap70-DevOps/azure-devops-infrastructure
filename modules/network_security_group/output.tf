output "nsg_id" {

  description = "Network Security Group IDs"

  value = {
    for key, value in azurerm_network_security_group.nsg :
    key => value.id
  }
}

output "nsg_name" {

  description = "Network Security Group names"

  value = {
    for key, value in azurerm_network_security_group.nsg :
    key => value.name
  }
}