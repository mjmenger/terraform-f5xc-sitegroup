<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.12.7 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 2.24 |
| <a name="requirement_volterra"></a> [volterra](#requirement\_volterra) | 0.11.9 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_volterra"></a> [volterra](#provider\_volterra) | 0.11.9 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [volterra_site_mesh_group.site-group](https://registry.terraform.io/providers/volterraedge/volterra/0.11.9/docs/resources/site_mesh_group) | resource |
| [volterra_virtual_site.virtual_site](https://registry.terraform.io/providers/volterraedge/volterra/0.11.9/docs/resources/virtual_site) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_project_prefix"></a> [project\_prefix](#input\_project\_prefix) | projectPrefix name for tagging | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_site_selector_key"></a> [site\_selector\_key](#output\_site\_selector\_key) | n/a |
| <a name="output_site_selector_value"></a> [site\_selector\_value](#output\_site\_selector\_value) | n/a |
| <a name="output_virtual_site_name"></a> [virtual\_site\_name](#output\_virtual\_site\_name) | n/a |
<!-- END_TF_DOCS -->