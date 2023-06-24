resource "cloudflare_record" "mx" {
  for_each = {for idx, i in var.mx_records : idx => i}
  zone_id  = var.zone_id
  name     = each.value.name
  value    = lower(each.value.value)
  type     = "MX"
  priority = each.value.priority
  ttl      = each.value.ttl
}

resource "cloudflare_record" "googleworkspace_spf_record" {
  zone_id = var.zone_id
  type    = "TXT"
  name    = "@"
  value   = "v=spf1 include:_spf.google.com ~all"
  ttl     = 3600
}

