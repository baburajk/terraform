resource "aws_vpc" "dataplane_network" {
	tags = { environment = var.environment, managed_by  = var.managed_by }
	cidr_block           = "10.0.0.0/16"
	enable_dns_hostnames = true
	enable_dns_support   = true
}


