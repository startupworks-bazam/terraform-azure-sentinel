#Module      : LABEL
#Description : Terraform label module variables.
variable "sentinel_enabled" {
  type    = bool
  default = true
}

variable "log_analytics_workspace_id" {
  type        = string
  default     = ""
  description = "The ID of the Log Analytics Workspace this Sentinel MS Security Incident Alert Rule belongs to. Changing this forces a new Sentinel MS Security Incident Alert Rule to be created."
}

variable "product_filter" {
  type        = list(string)
  default     = ["Microsoft Cloud App Security"]
  description = "The Microsoft Security Service from where the alert will be generated. Possible values are Azure Active Directory Identity Protection, Azure Advanced Threat Protection, Azure Security Center, Azure Security Center for IoT, Microsoft Cloud App Security, Microsoft Defender Advanced Threat Protection and Office 365 Advanced Threat Protection."
}

variable "display_name" {
  type        = list(string)
  default     = ["Create incidents based on Microsoft Defender for Cloud"]
  description = "The friendly name of this Sentinel MS Security Incident Alert Rule."
}

variable "severity_filter" {
  type        = list(string)
  default     = ["High"]
  description = "Only create incidents from alerts when alert severity level is contained in this list. Possible values are High, Medium, Low and Informational."
}

variable "ms_security_incident_enabled" {
  type        = bool
  default     = true
  description = " Should this Sentinel MS Security Incident Alert Rule be enabled? Defaults to true."
}

variable "ms_security_enabled" {
  type        = bool
  default     = true
  description = " Should this Sentinel MS Security Incident Alert Rule be enabled? Defaults to true."
}

variable "dtc_iot_enabled" {
  type        = bool
  default     = false
  description = "Set to false to prevent the module from creating any resources."
}

variable "dtc_security_center_enabled" {
  type        = bool
  default     = false
  description = "Set to false to prevent the module from creating any resources."
}

variable "dtc_ad_enabled" {
  type        = bool
  default     = false
  description = "Set to false to prevent the module from creating any resources."
}

variable "dtc_advanced_threat_protection_enabled" {
  type        = bool
  default     = false
  description = "Set to false to prevent the module from creating any resources."
}

variable "dtc_ms_cloud_app_security_enabled" {
  type        = bool
  default     = false
  description = "Set to false to prevent the module from creating any resources."
}

variable "alerts_enabled" {
  type        = bool
  default     = true
  description = "Should the alerts be enabled? Defaults to true."
}

variable "dtc_ms_defender_advanced_threat_protection_enabled" {
  type        = bool
  default     = false
  description = "Set to false to prevent the module from creating any resources."
}

variable "dtc_ms_threat_protection_enabled" {
  type        = bool
  default     = false
  description = "Set to false to prevent the module from creating any resources."
}

variable "dtc_threat-intelligence_enabled" {
  type        = bool
  default     = false
  description = "Set to false to prevent the module from creating any resources."
}

variable "dtc_threat_intelligence_enabled" {
  type        = bool
  default     = false
  description = "Set to false to prevent the module from creating any resources."
}

variable "discovery_logs_enabled" {
  type        = bool
  default     = true
  description = "Should the Discovery Logs be enabled? Defaults to true."
}

variable "subscription_id" {
  type        = string
  default     = null
  description = "The ID of the subscription that this Iot Data Connector connects to. Changing this forces a new Iot Data Connector to be created."
}

variable "tenant_id" {
  type        = string
  default     = null
  description = "The ID of the tenant that this Azure Active Directory Data Connector connects to. Changing this forces a new Azure Active Directory Data Connector to be created."
}

variable "location" {
  type        = string
  default     = "uksouth"
  description = "The location/region where resources will be created. Default is UK South."
}

variable "tags" {
  description = "Tags to apply to all resources"
  type        = map(string)
  default     = {}
}

variable "resource_group_name" {
  type        = string
  description = "Name of the resource group to create"
}

variable "workspace_name" {
  type        = string
  description = "Name of the Log Analytics workspace to create"
}

variable "workspace_sku" {
  type        = string
  description = "SKU of the Log Analytics workspace"
  default     = "PerGB2018"
}

variable "retention_in_days" {
  type        = number
  description = "Data retention period in days"
  default     = 30
}
