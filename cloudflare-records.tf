resource "cloudflare_record" "dojitsi" {
  zone_id = var.cloudflare_zone_id
  name    = var.url
  value   = "127.0.0.1"
  type    = "A"
  proxied = false
}