output "resource_group_id" {
  value       = azurerm_resource_group.rg.id
  description = "The ID of the Resource Group"
}

output "workspace_id" {
  value       = azurerm_log_analytics_workspace.law.id
  description = "The ID of the Log Analytics Workspace"
}

output "sentinel_id" {
  value       = azurerm_log_analytics_solution.sentinel.id
  description = "The ID of the Security Insights Sentinel Solution"
}

output "workspace_name" {
  value       = azurerm_log_analytics_workspace.law.name
  description = "The name of the Log Analytics Workspace"
}

output "iot_id" {
  value       = try(azurerm_sentinel_data_connector_iot.main[0].id, null)
  description = "The ID of the Iot Data Connector."
}
output "security_center_id" {
  value       = try(azurerm_sentinel_data_connector_azure_security_center.main[0].id, null)
  description = "The ID of the Azure Security Center Data Connector."
}
output "dtc_ad_id" {
  value       = try(azurerm_sentinel_data_connector_azure_active_directory.main[0].id, null)
  description = " The ID of the Azure Active Directory Data Connector."
}
output "dtc_threat_protection_id" {
  value       = try(azurerm_sentinel_data_connector_azure_advanced_threat_protection.main[0].id, null)
  description = "The ID of the Azure Advanced Threat Protection Data Connector."
}
output "dtc_ms_cloud_app_security_id" {
  value       = try(azurerm_sentinel_data_connector_microsoft_cloud_app_security.main[0].id, null)
  description = "The ID of the Microsoft Cloud App Security Data Connector."
}
