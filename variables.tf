variable "domain" {
  description = "The domain to apply the MX records to"
  type        = string
}

variable "zone_id" {
  description = "The Cloudflare Zone ID"
  type        = string
}

variable "mx_records" {
  description = "MX records for the DNS"
  type        = list(object({
    name     = string
    priority = number
    value    = string
    ttl      = number
  }))

  default = [
    {
      name     = "@"
      priority = 1
      value    = "ASPMX.L.GOOGLE.COM"
      ttl      = 3600
    },
    {
      name     = "@"
      priority = 5
      value    = "ALT1.ASPMX.L.GOOGLE.COM"
      ttl      = 3600
    },
    {
      name     = "@"
      priority = 5
      value    = "ALT2.ASPMX.L.GOOGLE.COM"
      ttl      = 3600
    },
    {
      name     = "@"
      priority = 10
      value    = "ALT3.ASPMX.L.GOOGLE.COM"
      ttl      = 3600
    },
    {
      name     = "@"
      priority = 10
      value    = "ALT4.ASPMX.L.GOOGLE.COM"
      ttl      = 3600
    }
  ]
}