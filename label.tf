variable "name" {
  type        = string
  default     = ""
  description = "Name  (e.g. `app` or `cluster`)."
}

variable "repository" {
  type        = string
  default     = ""
  description = "Terraform current module repo"
}

variable "environment" {
  type        = string
  default     = "dev"
  description = "Environment name (dev, test, prod)"
}

variable "label_order" {
  type        = list(any)
  default     = ["name", "environment"]
  description = "Label order, e.g. sequence of application name and environment"
}

variable "managedby" {
  type        = string
  default     = ""
  description = "ManagedBy, eg ''"
}

variable "enabled" {
  type    = bool
  default = true
}