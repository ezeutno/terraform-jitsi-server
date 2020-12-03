resource "cloudflare_record" "server" {
  zone_id = var.cloudflare_zone_id
  name    = var.url
  value   = digitalocean_droplet.server.ipv4_address
  type    = "A"
  proxied = false
}