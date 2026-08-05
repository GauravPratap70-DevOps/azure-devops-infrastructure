output "resource_group_id" {

  description = "Resource group IDs"

  value = {
    for key, value in azurerm_resource_group.rg :
    key => value.id
  }

}


output "resource_group_name" {

  description = "Resource group names"

  value = {
    for key, value in azurerm_resource_group.rg :
    key => value.name
  }

}


output "resource_group_location" {

  description = "Resource group locations"

  value = {
    for key, value in azurerm_resource_group.rg :
    key => value.location
  }

}