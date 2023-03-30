terraform {
  required_version = ">= 0.12.7"

  required_providers {
    volterra = {
      source  = "volterraedge/volterra"
      version = "0.11.9"
    }
    aws = ">= 2.24"
  }
}
locals{
  site_selector_key = "site-group"
  site_selector_value = var.project_prefix
}
variable "project_prefix" {
  type        = string
  description = "projectPrefix name for tagging"
}
resource "volterra_virtual_site" "virtual_site" {
  name      = format("%s-site-group", var.project_prefix)
  namespace = "shared"

  site_selector {
    expressions = [format("%s in (%s)", local.site_selector_key, local.site_selector_value)]
  }

  site_type = "CUSTOMER_EDGE"
}

output site_selector_key {
  value = local.site_selector_key
}
output site_selector_value {
  value = local.site_selector_value
}

resource "volterra_site_mesh_group" "site-group" {
  name        = format("%s-site-group", var.project_prefix)
  namespace   = "system"
  tunnel_type = "SITE_TO_SITE_TUNNEL_IPSEC"
  type        = "SITE_MESH_GROUP_TYPE_FULL_MESH"
  virtual_site {
    name = volterra_virtual_site.virtual_site.name
    namespace = "shared"
  }
}

output virtual_site_name {
  value = volterra_virtual_site.virtual_site.name
}

