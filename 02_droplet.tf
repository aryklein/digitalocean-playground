# test Ubuntu instance in the nyc3 region

resource "digitalocean_droplet" "instance_test_01" {
  image  = "ubuntu-20-04-x64"
  name   = "test-01"
  region = "nyc3"
  size   = "s-1vcpu-1gb"
  ssh_keys = [digitalocean_ssh_key.ssh_key.fingerprint]
}
