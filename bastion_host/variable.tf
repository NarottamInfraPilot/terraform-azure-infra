variable "bastion_name" {
  description = "The name of the Bastion host"
  type        = string
}

variable "bastion_location" {
  description = "The location of the Bastion host"
  type        = string
}

variable "rg_name" {
  description = "The name of the resource group"
  type        = string
}
variable "bastion_ip_config_name" {
  description = "The name of the Bastion host IP configuration"
  type        = string

}
variable "subnet_id" {
  description = "The ID of the subnet for the Bastion host"
  type        = string

}
variable "public_ip_address_id" {

}
