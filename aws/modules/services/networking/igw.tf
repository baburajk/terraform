resource "aws_internet_gateway" "gw" {
  tags = { environment = var.environment, managed_by  = var.managed_by }

  vpc_id = aws_vpc.dataplane_network.id

}

