resource "aws_lb_target_group" "webtg" {
  name     = "webtg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.dataplane_network.id
}

