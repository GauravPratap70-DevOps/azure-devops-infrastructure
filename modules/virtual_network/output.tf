output "virtual_network_id" {

  description = "Virtual network IDs"

  value = {
    for key, value in azurerm_virtual_network.vnet :
    key => value.id
  }

}


output "virtual_network_name" {

  description = "Virtual network names"

  value = {
    for key, value in azurerm_virtual_network.vnet :
    key => value.name
  }

}