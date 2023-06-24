<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_cloudflare"></a> [cloudflare](#requirement\_cloudflare) | >= 4.8.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_cloudflare"></a> [cloudflare](#provider\_cloudflare) | >= 4.8.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudflare_record.googleworkspace_spf_record](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/record) | resource |
| [cloudflare_record.mx](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/record) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_mx_records"></a> [mx\_records](#input\_mx\_records) | MX records for the DNS | <pre>list(object({<br>    name     = string<br>    priority = number<br>    value    = string<br>    ttl      = number<br>  }))</pre> | <pre>[<br>  {<br>    "name": "@",<br>    "priority": 1,<br>    "ttl": 3600,<br>    "value": "ASPMX.L.GOOGLE.COM"<br>  },<br>  {<br>    "name": "@",<br>    "priority": 5,<br>    "ttl": 3600,<br>    "value": "ALT1.ASPMX.L.GOOGLE.COM"<br>  },<br>  {<br>    "name": "@",<br>    "priority": 5,<br>    "ttl": 3600,<br>    "value": "ALT2.ASPMX.L.GOOGLE.COM"<br>  },<br>  {<br>    "name": "@",<br>    "priority": 10,<br>    "ttl": 3600,<br>    "value": "ALT3.ASPMX.L.GOOGLE.COM"<br>  },<br>  {<br>    "name": "@",<br>    "priority": 10,<br>    "ttl": 3600,<br>    "value": "ALT4.ASPMX.L.GOOGLE.COM"<br>  }<br>]</pre> | no |
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | The Cloudflare Zone ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_creation_date"></a> [creation\_date](#output\_creation\_date) | Creation date of the record |
| <a name="output_mx_domain"></a> [mx\_domain](#output\_mx\_domain) | The domain of the mx records. |
<!-- END_TF_DOCS -->