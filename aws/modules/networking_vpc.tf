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


/*


Error: Error creating VPC IPv4 CIDR block association: InvalidVpc.Range: The CIDR '192.168.0.0/16' is restricted. Use a CIDR from the same private address range as the current VPC CIDR, or use a publicly-routable CIDR. For additional restrictions, see https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html#VPC_Sizing
	status code: 400, request id: 3d61abb8-a58e-4cac-9408-b4c7a469dfbd


resource "aws_vpc_ipv4_cidr_block_association" "controlplane_network" {
  vpc_id     = aws_vpc.dataplane_network.id
  cidr_block = "172.16.0.0/12"
}

Error: Error creating VPC IPv4 CIDR block association: InvalidVpc.Range: The CIDR '192.168.0.0/16' is restricted. Use a CIDR from the same private address range as the current VPC CIDR, or use a publicly-routable CIDR. For additional restrictions, see https://docs.aws.amazon.com/AmazonVPC/latest/UserGuide/VPC_Subnets.html#VPC_Sizing
	status code: 400, request id: c5b8019d-88b9-4f5e-8db7-386a97da22df

resource "aws_vpc_ipv4_cidr_block_association" "compliance_network" {
	vpc_id     = aws_vpc.dataplane_network.id
	cidr_block = "192.168.0.0/16"
}


*/
