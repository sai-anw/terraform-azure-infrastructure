module "resource_group" {
  source = "../../modules/resource-group"

  name     = var.resource_group_name
  location = var.location
  tags     = jsondecode(var.tags)
}

module "network" {
  source = "../../modules/network"

  vnet_name          = var.vnet_name
  subnet_name        = var.subnet_name
  resource_group_name = module.resource_group.name
  location           = var.location

  address_space   = jsondecode(var.address_space)
  subnet_prefixes = jsondecode(var.subnet_prefixes)

  tags = jsondecode(var.tags)
}

module "vm" {
  source = "../../modules/vm"

  vm_name            = var.vm_name
  resource_group_name = module.resource_group.name
  location           = var.location
  subnet_id          = module.network.subnet_id

  vm_size          = var.vm_size
  admin_username   = var.admin_username
  ssh_public_key   = var.ssh_public_key
  os_disk_size_gb  = var.os_disk_size_gb
  allowed_ssh_source = var.allowed_ssh_source

  tags = jsondecode(var.tags)
}

module "eventhub" {
  source = "../../modules/eventhub"

  namespace_name      = var.eventhub_namespace_name
  eventhub_name       = var.eventhub_name
  resource_group_name = module.resource_group.name
  location            = var.location

  sku                = var.eventhub_sku
  capacity           = var.eventhub_capacity
  partition_count    = var.eventhub_partition_count
  message_retention  = var.eventhub_message_retention

  tags = jsondecode(var.tags)
}
