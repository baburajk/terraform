resource "aws_subnet" "subnet_lb1" {
	cidr_block        = "10.0.10.0/24"
	vpc_id            = aws_vpc.dataplane_network.id
	availability_zone = "us-east-1a"
}

resource "aws_subnet" "subnet_web1" {
	cidr_block        = "10.0.50.0/24"
	vpc_id            = aws_vpc.dataplane_network.id
	availability_zone = "us-east-1a"
}

resource "aws_subnet" "subnet_db1" {
	cidr_block        = "10.0.70.0/24"
	vpc_id            = aws_vpc.dataplane_network.id
	availability_zone = "us-east-1a"
}

resource "aws_subnet" "subnet_lb2" {
	cidr_block        = "10.0.20.0/24"
	vpc_id            = aws_vpc.dataplane_network.id
	availability_zone = "us-east-1b"
}

resource "aws_subnet" "subnet_web2" {
	cidr_block        = "10.0.60.0/24"
	vpc_id            = aws_vpc.dataplane_network.id
	availability_zone = "us-east-1b"
}

resource "aws_subnet" "subnet_db2" {
	cidr_block        = "10.0.80.0/24"
	vpc_id            = aws_vpc.dataplane_network.id
	availability_zone = "us-east-1b"
}

