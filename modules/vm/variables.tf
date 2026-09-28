variable "vm_name" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "subnet_id" {
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

variable "tags" {
  type    = map(string)
  default = {}
}
