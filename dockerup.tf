resource "null_resource" "dockerup" {

  connection {
    type  = "ssh"
    user  = "root"
    host  = digitalocean_droplet.server.ipv4_address
    private_key = file(var.private_key_path)
  }

   provisioner "remote-exec" {
    inline = [
        "cd /root/${var.github_repository}/",
        "docker-compose up -d"
    ]
  }
}