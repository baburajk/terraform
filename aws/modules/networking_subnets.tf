resource "aws_subnet" "subnet_lb1" {
	cidr_block        = "10.0.10.0/24"
	vpc_id            = aws_vpc.dataplane_network.id
	availability_zone = "us-east-1a"
	tags = {
		Name		= "subnet_lb1"
		environment 	= var.environment,
		managed_by  	= var.managed_by
	}
}

resource "aws_subnet" "subnet_lb2" {
	cidr_block        = "10.0.20.0/24"
	vpc_id            = aws_vpc.dataplane_network.id
	availability_zone = "us-east-1b"
	tags = {
		Name		= "subnet_lb2"
		environment 	= var.environment,
		managed_by  	= var.managed_by
	}
}

resource "aws_subnet" "subnet_web1" {
	cidr_block        = "10.0.50.0/24"
	vpc_id            = aws_vpc.dataplane_network.id
	availability_zone = "us-east-1a"
	tags = {
		Name		= "subnet_web1"
		environment 	= var.environment,
		managed_by  	= var.managed_by
	}
}

resource "aws_subnet" "subnet_web2" {
	cidr_block        = "10.0.60.0/24"
	vpc_id            = aws_vpc.dataplane_network.id
	availability_zone = "us-east-1b"
	tags = {
		Name		= "subnet_web2"
		environment 	= var.environment,
		managed_by  	= var.managed_by
	}
}


