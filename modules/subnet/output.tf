output "subnet_id" {

  description = "Subnet IDs"

  value = {
    for key, value in azurerm_subnet.subnet :
    key => value.id
  }
}

output "subnet_name" {

  description = "Subnet names"

  value = {
    for key, value in azurerm_subnet.subnet :
    key => value.name
  }
}