resource "google_compute_network" "development_net"{
 name = "devnet"
  auto_create_subnetworks = true
}

resource "aws_vpc" "development_net" {
 cidr_block = "10.0.0.0/16"
 enable_dns_hostnames = true
 enable_dns_support = true
 tags = { Name = "devnet"}
}