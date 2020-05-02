resource "aws_instance" "example" {
  ami                         = "ami-0c322300a1dd5dc79"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.subnet_web1.id
  vpc_security_group_ids = [aws_security_group.sg_web.id,aws_security_group.sg_ssh.id]
  associate_public_ip_address = "true"
  key_name = "id_rsa_aws.pem"

  user_data = <<-EOF
              #!/bin/bash
              echo "Testing httpd server" > index.html
              #nohup busybox httpd -f -p "${var.server_port}" &
              EOF

  tags = {
    Name		= "ec2_web1"
    environment 	= var.environment,
    managed_by  	= var.managed_by
  }

}

