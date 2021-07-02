variable "resource_group_id" {
  type        = string
  description = "The id of the IBM Cloud resource group where the VPC instance will be created."
}

variable "region" {
  type        = string
  description = "The IBM Cloud region where the cluster will be/has been installed."
}

variable "ibmcloud_api_key" {
  type        = string
  description = "The IBM Cloud api token"
}

variable "vpc_name" {
  type        = string
  description = "The name of the vpc instance"
}

variable "provision" {
  type        = boolean
  description = "Flag indicating that the load balancer should be provisioned"
  default     = true
}

variable "label" {
  type        = string
  description = "Label for the subnets created"
  default     = "default"
}

variable "subnet_ids" {
  type        = list(string)
  description = "List of subnet ids that should be attached to the load balancer"
}

variable "type" {
  type        = string
  description = "The type of the load balancer (public or private)"
  default     = null
}

variable "profile" {
  type        = string
  description = "The profile used for the load balancer (network-fixed)"
  default     = null
}

variable "security_groups" {
  type        = list(string)
  description = "The list of ids for the security groups attached to the load balancer"
  default     = null
}

variable "tags" {
  type        = list(string)
  description = "The tags for the instance"
  default     = []
}
