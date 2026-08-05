output "bastion_id" {

  value = {
    for key, value in azurerm_bastion_host.bastion :
    key => value.id
  }
}