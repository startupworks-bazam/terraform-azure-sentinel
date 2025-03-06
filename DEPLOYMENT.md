# Azure Sentinel Deployment Guide

## Prerequisites

### Azure Requirements
- Active Azure Subscription
- Resource Group
- Log Analytics Workspace
- Service Principal with required permissions

### Tools
- Git
- Access to Terraform Cloud
- Azure CLI (optional)

## Environment Variables
Required in Terraform Cloud:

| Variable | Description | Sensitive |
|----------|-------------|-----------|
| ARM_SUBSCRIPTION_ID | Azure Subscription ID | Yes |
| ARM_TENANT_ID | Azure Tenant ID | Yes |
| ARM_CLIENT_ID | Service Principal ID | Yes |
| ARM_CLIENT_SECRET | Service Principal Secret | Yes |

## Terraform Variables
Required in Terraform Cloud:

| Variable | Description | Default |
|----------|-------------|---------|
| existing_resource_group_name | Name of existing Resource Group | "reddome-dev-rg" |
| existing_workspace_name | Name of existing Log Analytics Workspace | "reddome-dev-law" |
| enabled | Enable/Disable all resources | true |
| sentinel_enabled | Enable/Disable Sentinel | true |

## Deployment Steps

1. **Clone Repository**
```bash
git clone https://github.com/reddomeuk/terraform-azure-sentinel.git
cd terraform-azure-sentinel