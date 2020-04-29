resource "aws_subnet" "subnet_lb1" {
	tags 			  = { environment = var.environment, managed_by  = var.managed_by }
	cidr_block        = "10.0.10.0/24"
	vpc_id            = aws_vpc.dataplane_network.id
	availability_zone = "us-east-1a"
}

resource "aws_subnet" "subnet_web1" {
	tags 			  = { environment = var.environment, managed_by  = var.managed_by }
	cidr_block        = "10.0.50.0/24"
	vpc_id            = aws_vpc.dataplane_network.id
	availability_zone = "us-east-1a"
}

resource "aws_subnet" "subnet_db1" {
	tags 			  = { environment = var.environment, managed_by  = var.managed_by }
	cidr_block        = "10.0.70.0/24"
	vpc_id            = aws_vpc.dataplane_network.id
	availability_zone = "us-east-1a"
}

resource "aws_subnet" "subnet_lb2" {
	tags 			  = { environment = var.environment, managed_by  = var.managed_by }
	cidr_block        = "10.0.20.0/24"
	vpc_id            = aws_vpc.dataplane_network.id
	availability_zone = "us-east-1b"
}

resource "aws_subnet" "subnet_web2" {
	tags 			  = { environment = var.environment, managed_by  = var.managed_by }
	cidr_block        = "10.0.60.0/24"
	vpc_id            = aws_vpc.dataplane_network.id
	availability_zone = "us-east-1b"
}

resource "aws_subnet" "subnet_db2" {
	tags 			  = { environment = var.environment, managed_by  = var.managed_by }
	cidr_block        = "10.0.80.0/24"
	vpc_id            = aws_vpc.dataplane_network.id
	availability_zone = "us-east-1b"
}

