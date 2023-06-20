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
| [cloudflare_record.mx](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/record) | resource |
| [cloudflare_record.spf](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/record) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_domain"></a> [domain](#input\_domain) | The APEX domain (e.g., example.com) | `any` | n/a | yes |
| <a name="input_sub_domain"></a> [sub\_domain](#input\_sub\_domain) | The sub-domain for the MX records, if applicable | `string` | `"@"` | no |
| <a name="input_ttl"></a> [ttl](#input\_ttl) | TTL for the DNS records | `number` | `3600` | no |
| <a name="input_zone_id"></a> [zone\_id](#input\_zone\_id) | Zone id for cloudflare | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_creation_date"></a> [creation\_date](#output\_creation\_date) | Creation date of the record |
| <a name="output_mx_domain"></a> [mx\_domain](#output\_mx\_domain) | The domain of the mx records. |
<!-- END_TF_DOCS -->