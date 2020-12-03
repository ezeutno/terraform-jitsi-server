variable "digital_ocean_key" {
  description = "your digital ocean token"
}

variable "cloudflare_key" {
  description = "your cloudflare api_key"
}

variable "cloudflare_account_name" {
  description = "cloudflare account name"
}

variable "cloudflare_zone_id" {
  description = "cloudflare zone id"
}

variable "url" {
  description = "jitsi url"
}

variable "email" {
  description = "this is for let's encrypt configuration"
}

variable "private_key_path" {
  description = "path to the private key for ssh execution"
}

variable "public_key_name" {
  description = "what is the public key name stored in digital ocean"
}

variable "github_repo_url" {
  description = "git repository url"
  default     = "github.com"
}

variable "github_username" {
  description = "docker compose git repository username"
  default     = "jitsi"
}

variable "github_repository" {
  description = "docker compose git repository"
  default     = "docker-jitsi-meet"
}

variable "generate_config_path" {
  description = "generate config path for the remote server before docker_compose up"
  default     = "gen_passwords.sh"
}