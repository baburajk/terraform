resource "aws_instance" "ec2_web1" {

  ami                         = "ami-0c322300a1dd5dc79"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.subnet_web1.id
  vpc_security_group_ids      = [aws_security_group.sg_web.id,aws_security_group.sg_ssh.id]
  associate_public_ip_address = "true"
  key_name                    = "devops"

  user_data = file("install_nginx.sh")

  /*
  user_data = <<-EOF
              #!/bin/bash
              EOF
              */

  tags = {
    Name		    = "ec2_web1"
    environment 	= var.environment,
    managed_by  	= var.managed_by
  }

}

resource "aws_instance" "ec2_web2" {

  ami                         = "ami-0c322300a1dd5dc79"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.subnet_web2.id
  vpc_security_group_ids      = [aws_security_group.sg_web.id,aws_security_group.sg_ssh.id]
  associate_public_ip_address = "true"
  key_name                    = "devops"

  user_data = file("install_nginx.sh")

  tags = {
    Name		    = "ec2_web2"
    environment 	= var.environment,
    managed_by  	= var.managed_by
  }

}
