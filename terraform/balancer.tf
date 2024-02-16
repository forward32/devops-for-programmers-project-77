resource "digitalocean_domain" "domain" {
  name = "forward32.online"
}

resource "digitalocean_certificate" "cert" {
  name    = "cert"
  type    = "lets_encrypt"
  domains = [digitalocean_domain.domain.name]
}

resource "digitalocean_loadbalancer" "hexlet-lb" {
  name   = "hexlet-lb"
  region = "sgp1"

  forwarding_rule {
    entry_port     = 443
    entry_protocol = "https"

    target_port     = 3000
    target_protocol = "http"

    certificate_name = digitalocean_certificate.cert.name
  }

  healthcheck {
    port     = 3000
    protocol = "http"
    path     = "/"
  }

  droplet_ids = [digitalocean_droplet.hexlet-1.id, digitalocean_droplet.hexlet-2.id]
}
