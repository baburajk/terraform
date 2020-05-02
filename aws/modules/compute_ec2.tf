resource "aws_instance" "example" {

  ami                         = "ami-0c322300a1dd5dc79"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.subnet_web1.id
  vpc_security_group_ids      = [aws_security_group.sg_web.id,aws_security_group.sg_ssh.id]
  associate_public_ip_address = "true"
  key_name                    = "devops"

  user_data = "${file("./install_nginx.sh")}"

  /*
  user_data = <<-EOF
              #!/bin/bash
              yum install -y nginx
              systemctl enable nginx
              systemctl start nginx
              echo 'System information ' >> /usr/share/nginx/html/home.html
              curl -v http://169.254.169.254/latest/meta-data/local-ipv4 >> /usr/share/nginx/html/home.html
              curl -v http://169.254.169.254/latest/meta-data/public-hostname >> /usr/share/nginx/html/home.html
              systemctl reload nginx
              EOF
              */

  tags = {
    Name		    = "ec2_web1"
    environment 	= var.environment,
    managed_by  	= var.managed_by
  }

}

