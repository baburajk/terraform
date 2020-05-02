resource "aws_security_group" "sg_ssh" {

  vpc_id = aws_vpc.dataplane_network.id

  # Inbound ssh from anywhere
  ingress {
    from_port   = 0
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name		= "sg_ssh"
    environment 	= var.environment,
    managed_by  	= var.managed_by
    Description     = "Allow ssh"
  }
}

resource "aws_security_group" "sg_lb" {

  vpc_id = aws_vpc.dataplane_network.id

  # Allow all outbound
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Inbound HTTP from anywhere
  ingress {
    from_port   = var.lb_port
    to_port     = var.lb_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name		= "sg_lb"
    environment 	= var.environment,
    managed_by  	= var.managed_by
  }
}

resource "aws_security_group" "sg_web" {

  vpc_id = aws_vpc.dataplane_network.id

  # Allow all outbound
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Inbound HTTP from anywhere
  ingress {
    from_port   = var.lb_port
    to_port     = var.lb_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name		= "sg_web"
    environment 	= var.environment,
    managed_by  	= var.managed_by
  }
}
