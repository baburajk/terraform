resource "aws_vpc" "dataplane_network" {
	cidr_block           = "10.0.0.0/16"
	enable_dns_hostnames = true
	enable_dns_support   = true
	tags = { Name = "${var.env_prefix}-dataplane}", "managed_by"  = var.managed_by }
}


