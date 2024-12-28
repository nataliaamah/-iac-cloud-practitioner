variable do_token {}

terraform {
    required_providers {
        digitalocean = {
            source = "digitalocean/digitalocean"
            version = "~> 2.0"
        }
    }
}

resource "digitalocean_droplet" "natDroplet1" {
    image = "ubuntu-24-10-x64"
    name = "firstDroplet"
    region = "sgp1"
    size = "s-1vcpu-1gb"
}

resource "digitalocean_droplet" "natDroplet2" {
    image = "ubuntu-24-10-x64"
    name = "secondDroplet"
    region = "sgp1"
    size = "s-1vcpu-1gb"
}