resource "null_resource" "create_db_credentials" {

  connection {
    type  = "ssh"
    user  = "root"
    host  = digitalocean_droplet.server.ipv4_address
    private_key = file(var.private_key_path)
  }

   provisioner "remote-exec" {
    inline = [
        "docker-compose up -d"
    ]
  }
}