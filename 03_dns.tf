# DNS A record for instance instance_test_01
resource "digitalocean_record" "dns_test_01" {
  domain = "kleinerman.org"
  type   = "A"
  name   = "test"
  ttl    = "60"
  value  = digitalocean_droplet.instance_test_01.ipv4_address
}
