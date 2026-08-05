module "resource_group" {

  source = "../../modules/resource_group"

  resource_group = var.resource_group

}

module "virtual_network" {

  source = "../../modules/virtual_network"

  virtual_net = var.virtual_net1
}

module "subnet" {

  source = "../../modules/subnet"

  subnet = var.subnet1
}

module "network_security_group" {

  source = "../../modules/network_security_group"

  nsg = var.nsg1
}

module "public_ip" {

  source = "../../modules/public_ip"

  public_ip = var.public_ip1
}

module "network_interface" {

  source = "../../modules/network_interface"

  nic = {
    vm_nic = {

      name                          = "dev-vm-nic"
      location                      = "Central India"
      resource_group_name           = "Dev-rg"
      ip_configuration_name         = "internal"
      subnet_id                     = module.subnet.subnet_id["subnet01"]
      private_ip_address_allocation = "Dynamic"
    }
  }
}

module "virtual_machine" {

  source = "../../modules/virtual_machine"

  vm = {
    for key, value in var.vm1 :
    key => merge(value, {
      network_interface_id = module.network_interface.nic_id["vm_nic"]
    })
  }
}