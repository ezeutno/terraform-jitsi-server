data "template_file" "env_server_config" {
  template = file(".env.tpl")
  vars = {
    url     = var.url
    email   = var.email
  }
}