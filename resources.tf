resource "google_compute_network" "development_net"{
 name = "devnet"
  auto_create_subnetworks = false
}

resource "aws_vpc" "development_net" {
 cidr_block           = "10.0.0.0/16"
 enable_dns_hostnames = true
 enable_dns_support   = true

  tags = { Name = "devnet"}
}

resource "aws_subnet" "devnet_subnet1" {
 cidr_block         = "10.0.1.0/24"
  vpc_id            = aws_vpc.development_net.id
  availability_zone = "us-east-1a"
}

resource "aws_subnet" "devnet_subnet2" {
 cidr_block         = "10.0.2.0/24"
 vpc_id             = aws_vpc.development_net.id
 availability_zone  = "us-east-1b"
}

resource "aws_s3_bucket" "tf-s3-example"{
  bucket  = "intercloudzone-devops-bk9999"
  acl     = "private"

}

/*
resource "aws_instance" "web1"{
  ami           = "ami-0246ade505622f05f"
  instance_type = "t2.micro"
}

*/

resource "aws_security_group" "subnetsg"{
 vpc_id       = aws_vpc.development_net.id
  name        = "web_sg"
  description = " ingress=http and https, egress=all"

 ingress  {
       cidr_blocks  = [ "0.0.0.0/0" ]
       from_port    = 443
       to_port      = 443
      protocol      = "tcp"
   }

  ingress  {
    cidr_blocks  = [ "0.0.0.0/0" ]
    from_port    = 80
    to_port      = 80
    protocol     = "tcp"
  }

  egress  {
    from_port    = 0
    to_port      = 0
    protocol     = "-1"
    cidr_blocks  = [ "0.0.0.0/0" ]
  }

  tags = { "managed_by" : "terraform"}

}

resource aws_eip "prod_web_eip" {
  instance = aws_instance.prod_web.id



}

resource "aws_instance" "prod_web"{
  ami           = "ami-0551d2acb56d6e88c"
  instance_type = "t2.micro"

  vpc_security_group_ids = [aws_security_group.subnetsg.id]
  subnet_id = aws_subnet.devnet_subnet1.id

}
