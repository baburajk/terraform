resource "aws_vpc" "dataplane_network" {
	cidr_block           = "10.0.0.0/16"
	enable_dns_hostnames = true
	enable_dns_support   = true

	tags = { 
		Name		= "dataplane_network"
		environment 	= var.environment, 
		managed_by  	= var.managed_by 
	}
}

resource "aws_vpc_ipv4_cidr_block_association" "controlplane_network" {
  vpc_id     = aws_vpc.dataplane_network.id
  cidr_block = "172.16.0.0/16"
}

resource "aws_vpc_ipv4_cidr_block_association" "compliance_network" {
	vpc_id     = aws_vpc.dataplane_network.id
	cidr_block = "192.168.0.0/16"
}
