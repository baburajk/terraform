resource "aws_lb" "lb" {
  name               = "lbr"
  tags = { environment = var.environment, managed_by  = var.managed_by }

  #availability_zones  = [ data.aws_availability_zones.all.names[0], data.aws_availability_zones.all.names[1]]
  subnets             = [ aws_subnet.subnet_lb1.id, aws_subnet.subnet_lb2.id ]

  /*
  listener  {
      instance_port     = var.server_port
      instance_protocol = "http"
      lb_port           = var.lb_port
      lb_protocol       = "http"
    }
    */
}

