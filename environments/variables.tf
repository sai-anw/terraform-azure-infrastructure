variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "vnet_name" {
  type = string
}

variable "subnet_name" {
  type = string
}

variable "address_space" {
  type = string
}

variable "subnet_prefixes" {
  type = string
}

variable "vm_name" {
  type = string
}

variable "vm_size" {
  type = string
}

variable "admin_username" {
  type = string
}

variable "ssh_public_key" {
  type      = string
  sensitive = true
}

variable "os_disk_size_gb" {
  type = number
}

variable "allowed_ssh_source" {
  type = string
}

variable "eventhub_namespace_name" {
  type = string
}

variable "eventhub_name" {
  type = string
}

variable "eventhub_sku" {
  type = string
}

variable "eventhub_capacity" {
  type = number
}

variable "eventhub_partition_count" {
  type = number
}

variable "eventhub_message_retention" {
  type = number
}

variable "tags" {
  type = string
}
