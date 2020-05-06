resource "aws_default_network_acl" "default" {
  default_network_acl_id = aws_vpc.dataplane_network.default_network_acl_id

  subnet_ids = [aws_subnet.subnet_lb1.id,aws_subnet.subnet_lb2.id]

  ingress {
    protocol   = -1
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  egress {
    protocol   = -1
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }
}

