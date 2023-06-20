output "mx_domain" {
  description = "The domain of the mx records."
  value = cloudflare_record.mx.domain
}

output "creation_date" {
  description = "Creation date of the record"
  value = cloudflare_record.mx.created_on
}

