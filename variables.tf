variable "create_vgw" {
  description = "Create the customer gateway"
  type = bool
  default = false
}

variable "vgw_id" {
  description = "An existing VGW id"
  type = string
  default = ""
}

variable "cgw_bgp_asn" {
  description = "The customer gateway bgp ASN"
  type = number
  default = 65000
}

variable "cgw_ip" {
  description = "The customer gateway IP address"
  type = string
}

variable "name" {
  description = "An identifier applied to all resources"
  type = string
}

variable "vpn_static_routes_only" {
  description = ""
  type = bool
  default = false
}

variable "vpn_static_routes" {
  description = ""
  type = list(string)
  default = []
}

variable "tags" {
  description = ""
  type = map(string)
  default = {}
}
