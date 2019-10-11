locals {
  tags = { env = "tf-module-aws-vpn" }
}

module "with_vgw" {
  source = "../"

  create_vgw = true
  cgw_ip     = "172.83.124.10"
  name       = "dc-primary"
  tags       = local.tags
}


module "existing_vgw" {
  source = "../"

  create_vgw = false
  vgw_id     = module.with_vgw.vgw_id
  cgw_ip     = "172.83.124.1"
  name       = "dc-secondary"
  tags       = local.tags
}
