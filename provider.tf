provider "digitalocean" {
  token = var.digital_ocean_key
}

provider "cloudflare" {
  version = "~> 2.0"
  email   = var.cloudflare_account_name
  api_key = var.cloudflare_key
}
