variable "namespace_name" {
  type = string
}

variable "eventhub_name" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "location" {
  type = string
}

variable "sku" {
  type = string
}

variable "capacity" {
  type = number
}

variable "partition_count" {
  type = number
}

variable "message_retention" {
  type = number
}

variable "tags" {
  type    = map(string)
  default = {}
}
