# Firewall for the droplet instance_test_01

resource "digitalocean_firewall" "firewall_test_01" {
  name                    = "firewall-test-01"

  droplet_ids             = [digitalocean_droplet.instance_test_01.id]

  inbound_rule {
    protocol              = "tcp"
    port_range            = "22"
    source_addresses      = ["186.138.25.56/32"]
  }

  inbound_rule {
    protocol              = "tcp"
    port_range            = "80"
    source_addresses      = ["0.0.0.0/0", "::/0"]
  }

  inbound_rule {
    protocol              = "tcp"
    port_range            = "443"
    source_addresses      = ["0.0.0.0/0", "::/0"]
  }

  inbound_rule {
    protocol              = "icmp"
    source_addresses      = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "tcp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "udp"
    port_range            = "1-65535"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }

  outbound_rule {
    protocol              = "icmp"
    destination_addresses = ["0.0.0.0/0", "::/0"]
  }


}
