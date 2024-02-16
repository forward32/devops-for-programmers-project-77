resource "digitalocean_droplet" "hexlet-1" {
  image  = "docker-20-04"
  name   = "hexlet-1"
  region = "sgp1"
  size   = "s-1vcpu-1gb"
  ssh_keys = [
    data.digitalocean_ssh_key.terraform.id
  ]
}

resource "digitalocean_droplet" "hexlet-2" {
  image  = "docker-20-04"
  name   = "hexlet-2"
  region = "sgp1"
  size   = "s-1vcpu-1gb"
  ssh_keys = [
    data.digitalocean_ssh_key.terraform.id
  ]
}
