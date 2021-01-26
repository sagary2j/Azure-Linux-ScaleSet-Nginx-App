variable "subscriptionID" {
  type        = string
  description = "Variable for our subscriptionID"
}

variable "client_id" {
  type        = string
  description = "Variable for our client_id"
}

variable "client_secret" {
  type        = string
  description = "Variable for our client_secret"
}

variable "tenant_id" {
  type        = string
  description = "Variable for our tenant_id"
}

variable "location" {
  description = "The location where resources will be created"
}

variable "tags" {
  description = "A map of the tags to use for the resources that are deployed"
  type        = map(string)

  default = {
    environment = "TestCD"
  }
}

variable "resource_group_name" {
  description = "The name of the resource group in which the resources will be created"
  default     = "myResourceGroup"
}

variable "application_port" {
  description = "The port that you want to expose to the external load balancer"
  default     = 80
}

variable "remote_port" {
  description = "Protocols to be used for remote vm access. [protocol, backend_port].  Frontend port will be automatically generated starting at 50000 and in the output."
  type        = map(any)
  default     = {}
}

variable "admin_user" {
  description = "User name to use as the admin account on the VMs that will be part of the VM Scale Set"
  default     = "azureuser"
}

variable "admin_password" {
  description = "Default password for admin account"
}

variable "custom_image_name" {
  description = "Custom Image name created using Packer to  be part of the VM Scale Set"
}

