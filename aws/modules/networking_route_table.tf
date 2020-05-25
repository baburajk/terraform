resource "aws_default_route_table" "rt_public" {
  default_route_table_id = aws_vpc.dataplane_network.default_route_table_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

    tags = {
    Name		= "route_table"
    environment 	= var.environment,
    managed_by  	= var.managed_by
  }


/*
  // Add ipv6 later.
  route {
    ipv6_cidr_block        = "::/0"
    egress_only_gateway_id = "${aws_egress_only_internet_gateway.foo.id}"
  }

  */
}

/*

resource "aws_route_table" "rt_private_web1" {
  vpc_id = aws_vpc.dataplane_network.id

  route {
    cidr_block = aws_subnet.subnet_web1.cidr_block
  }
}

resource "aws_route_table" "rt_private_web2" {
  vpc_id = aws_vpc.dataplane_network.id

  route {
    cidr_block = aws_subnet.subnet_web2.cidr_block
  }
}

*/
