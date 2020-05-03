# SSH public key authentication
resource "digitalocean_ssh_key" "ssh_key" {
  name       = "terraform-ssh-key"
  public_key = file("terraform-do.pub")
}
