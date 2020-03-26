# terraform-module-aws-vpn
Create the aws side of vpn connection tunnel. This modules creates the following vpn configurations:

* create a vgw, cgw and vpn connection
* create a cgw+vpn connection on an existing vgw

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| cgw\_bgp\_asn | The customer gateway bgp ASN | `number` | `65000` | no |
| cgw\_id | An existing CGW id | `string` | `""` | no |
| cgw\_ip | The customer gateway IP address | `string` | n/a | yes |
| create\_cgw | Create the customer gateway | `bool` | `true` | no |
| create\_vgw | Create the vpn gateway | `bool` | `false` | no |
| name | An identifier applied to all resources | `string` | n/a | yes |
| tags | n/a | `map(string)` | `{}` | no |
| vgw\_id | An existing VGW id | `string` | `""` | no |
| vpn\_static\_routes | n/a | `list(string)` | `[]` | no |
| vpn\_static\_routes\_only | n/a | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------
