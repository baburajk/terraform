provider "aws" {
  region  = "us-east-1"
}

data "aws_availability_zones" "all" {}

resource "aws_vpc" "dataplane_network" {
 cidr_block           = "10.0.0.0/16"
 enable_dns_hostnames = true
 enable_dns_support   = true
  tags = { Name = "dataplane_network"}
}


resource "aws_subnet" "load_balancer_subnet" {
 cidr_block         = "10.0.1.0/24"
  vpc_id            = aws_vpc.dataplane_network.id
  availability_zone = "us-east-1a"
}

resource "aws_subnet" "web_subnet" {
 cidr_block         = "10.0.2.0/24"
 vpc_id            = aws_vpc.dataplane_network.id
 availability_zone  = "us-east-1a"
}

