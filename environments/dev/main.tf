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