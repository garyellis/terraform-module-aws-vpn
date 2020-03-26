variable "create_vgw" {
  description = "Create the vpn gateway"
  type        = bool
  default     = false
}

variable "vgw_id" {
  description = "An existing VGW id"
  type        = string
  default     = ""
}

variable "create_cgw" {
  description = "Create the customer gateway"
  type        = bool
  default     = true
}

variable "cgw_id" {
  description = "An existing CGW id"
  type        = string
  default     = ""
}

variable "cgw_bgp_asn" {
  description = "The customer gateway bgp ASN"
  type        = number
  default     = 65000
}

variable "cgw_ip" {
  description = "The customer gateway IP address"
  type        = string
}

variable "name" {
  description = "An identifier applied to all resources"
  type        = string
}

variable "vpn_static_routes_only" {
  type    = bool
  default = false
}

variable "vpn_static_routes" {
  type    = list(string)
  default = []
}

variable "tags" {
  type    = map(string)
  default = {}
}
