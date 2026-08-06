output "nsg_rule_ids" {

  value = {
    for k,v in azurerm_network_security_rule.nsg_rule :
    k => v.id
  }
}