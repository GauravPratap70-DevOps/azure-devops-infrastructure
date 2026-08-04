resource "azurerm_resource_group" "rg_sonu" {

  for_each = var.rg_sunu1

  name     = each.value.name
  location = each.value.location
}