# VPC Load Balancer

Module to provision a VPC load balancer.

**Note:** This module follows the Terraform conventions regarding how provider configuration is defined within the Terraform template and passed into the module - https://www.terraform.io/docs/language/modules/develop/providers.html. The default provider configuration flows through to the module. If different configuration is required for a module, it can be explicitly passed in the `providers` block of the module - https://www.terraform.io/docs/language/modules/develop/providers.html#passing-providers-explicitly.

## Software dependencies

The module depends on the following software components:

### Command-line tools

- terraform - v13

### Terraform providers

- IBM Cloud provider >= 1.5.3

## Module dependencies

This module makes use of the output from other modules:

- Resource group - github.com/ibm-garage-cloud/terraform-ibm-resource-group.git
- Subnets - github.com/ibm-garage-clout/terraform-ibm-vpc-subnets.git

## Example usage

```hcl-terraform
terraform {
  required_providers {
    ibm = {
      source = "ibm-cloud/ibm"
    }
  }
  required_version = ">= 0.13"
}

provider "ibm" {
  ibmcloud_api_key = var.ibmcloud_api_key
  region = var.region
}

module "load_balancer" {
  source = "github.com/ibm-garage-cloud/terraform-ibm-vpc-load-balancer.git"

  resource_group_id   = module.resource_group.id
  vpc_name            = module.subnets.vpc_name
  subnet_ids          = module.subnets.ids
  label               = var.load_balancer_label
  type                = var.load_balancer_type
}
```

