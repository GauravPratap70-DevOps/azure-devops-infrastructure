output "public_ip_id" {

  description = "Public IP IDs"

  value = {
    for key, value in azurerm_public_ip.pip :
    key => value.id
  }
}


output "public_ip_address" {

  description = "Public IP Addresses"

  value = {
    for key, value in azurerm_public_ip.pip :
    key => value.ip_address
  }
}