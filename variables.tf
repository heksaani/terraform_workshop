variable "resource_group_location" {
  type        = string
  default     = "swedencentral"
  description = "Location of the resource group."
}

variable "resource_group_name_prefix" {
  type        = string
  default     = "rg"
  description = "Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription."
}

variable "suffix" {
  default     = "heidi"
  description = "The suffix which should be used for all resources in this example"
}

variable "product" {
  default     = "lesson_01"
  description = "The product name. Lesson 01 is our hyper complex product."
}

variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
  sensitive   = true
}
