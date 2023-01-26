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
| <a name="input_projectPrefix"></a> [projectPrefix](#input\_projectPrefix) | projectPrefix name for tagging | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->