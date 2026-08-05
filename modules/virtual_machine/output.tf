output "vm_id" {

  value = {
    for key, value in azurerm_linux_virtual_machine.vm :
    key => value.id
  }
}

output "vm_name" {

  value = {
    for key, value in azurerm_linux_virtual_machine.vm :
    key => value.name
  }
}