# Azure Sentinel Terraform Module

## Overview

This Terraform module deploys Microsoft Sentinel (formerly Azure Sentinel) and its dependencies in Azure UK South region.

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) (>= 1.0.0)
- Azure Subscription
- Terraform Cloud account
- GitHub account

## Quick Start

1. Fork this repository to your GitHub account

2. Set up Terraform Cloud:
   ```bash
   # Login to Terraform Cloud
   terraform login
   
   # Create a new workspace in Terraform Cloud
   # Choose "Version control workflow" and connect to your forked repository
   ```

3. Configure Variables in Terraform Cloud:
   - Add the following variables:
     ```hcl
     resource_group_name = "rg-sentinel-prod"
     workspace_name     = "law-sentinel-prod"
     ```

4. Configure Azure Credentials:
   - Add these as environment variables in Terraform Cloud:
     ```
     ARM_CLIENT_ID
     ARM_CLIENT_SECRET
     ARM_SUBSCRIPTION_ID
     ARM_TENANT_ID
     ```

## Required Variables

| Name | Description | Type | Default |
|------|-------------|------|---------|
| location | Azure region | string | `"uksouth"` |
| resource_group_name | Name of the resource group | string | - |
| workspace_name | Name of the Log Analytics workspace | string | - |

## Environment Variables

```hcl
ARM_CLIENT_ID       = "your-client-id"
ARM_CLIENT_SECRET   = "your-client-secret"
ARM_SUBSCRIPTION_ID = "your-subscription-id"
ARM_TENANT_ID       = "your-tenant-id"
```

## Usage

```hcl
module "sentinel" {
  source  = "reddome/sentinel/azure"
  version = "1.0.0"
  
  resource_group_name = "rg-sentinel-prod"
  workspace_name     = "law-sentinel-prod"
  location           = "uksouth"  # Default UK South region
}
```

## Contributing

Contributions are welcome! Please read our [Contributing Guidelines](CONTRIBUTING.md).

## Support

For support and queries:
- Visit [RedDome.org](https://reddome.org)
- Create an issue in this repository
- Contact: info@reddome.org

## Maintainer

- [RedDomeUK](https://github.com/reddomeuk)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
