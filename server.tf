data "digitalocean_ssh_key" "ssh_key_id" {
  name = var.public_key_name
}

resource "digitalocean_droplet" "server" {
  # count    = 1
  image    = "ubuntu-20-04-x64"
  # name     = "mattermost-${count.index}"
  name     = "terraform-jitsi-server"
  region   = "sgp1"
  size     = "s-2vcpu-2gb"
  ssh_keys = [data.digitalocean_ssh_key.ssh_key_id.id] # mattermost ssh key id
  private_networking = true

  connection {
    type  = "ssh"
    user  = "root"
    host  = self.ipv4_address
    private_key = file(var.private_key_path)
  }

  provisioner "remote-exec" {
    inline = [ 
        "apt-get update",
        "apt-get install -y docker.io",
        "git clone https://${var.github_repo_url}/${var.github_username}/${var.github_repository}"
    ]
  }

  provisioner "file" {
    content     = data.template_file.env_server_config.rendered
    destination = "/root/${var.github_repository}/.env"
  }

  provisioner "remote-exec" {
    inline = [
        "cd ${var.github_repository}",
        "chmod +x ${var.generate_config_path}",
        "./${var.generate_config_path}"
    ]
  }
}