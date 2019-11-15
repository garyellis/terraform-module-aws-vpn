
resource "aws_vpn_gateway" "vpn" {
  count = var.create_vgw ? 1 : 0

  tags = merge(map("Name", var.name), var.tags)
}

locals {
  vgw_id = var.create_vgw ? join("", aws_vpn_gateway.vpn.*.id) : var.vgw_id
}

resource "aws_customer_gateway" "vpn" {
  bgp_asn    = var.cgw_bgp_asn
  ip_address = var.cgw_ip
  type       = "ipsec.1"
  tags       = merge(map("Name", var.name), var.tags)
}

resource "aws_vpn_connection" "vpn" {
  customer_gateway_id = aws_customer_gateway.vpn.id
  static_routes_only  = var.vpn_static_routes_only
  vpn_gateway_id      = local.vgw_id
  type                = "ipsec.1"
  tags                = merge(map("Name", var.name), var.tags)
}

resource "aws_vpn_connection_route" "vpn" {
  count = var.vpn_static_routes_only ? length(var.vpn_static_routes) : 0

  destination_cidr_block = element(var.vpn_static_routes, count.index)
  vpn_connection_id      = aws_vpn_connection.vpn.id
}

