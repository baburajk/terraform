resource "aws_lb" "lbr" {
  name                  = "lbr"
  internal              = false
  load_balancer_type    = "application"
  security_groups       = [aws_security_group.sg_lb.id]
  subnets               = [ aws_subnet.subnet_lb1.id, aws_subnet.subnet_lb2.id ]

/*
  access_logs {
    bucket  = aws_s3_bucket.clouds3icz.bucket
    prefix  = "lbaccesslogs"
    enabled = true

  }
*/

  tags = {
        Name		    = "lbr",
        environment     = var.environment,
        managed_by      = var.managed_by
        }


}

