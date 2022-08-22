# Sapient Interview Problem/Solution

Special note: Per https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/app_service the terraform docs. The resource type azurerm_app_service is deprecated and beginning in version 4.0 of azurerm provider we should use azurerm_linux_web_app or azurerm_windows_web_app moving forward. 

TODO: Fix deprecation issue and move to a more up to date resource type.


<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement\_azurerm) | =3.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | =3.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_app_service.app](https://registry.terraform.io/providers/hashicorp/azurerm/3.0.0/docs/resources/app_service) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_n_instances_to_provision"></a> [n\_instances\_to\_provision](#input\_n\_instances\_to\_provision) | The number of instances to provision for horizontal scaling. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->