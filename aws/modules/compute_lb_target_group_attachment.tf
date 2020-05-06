resource "aws_lb_target_group_attachment" "weblb_tg1" {
  target_group_arn = aws_lb_target_group.webtg.arn
  target_id        = aws_instance.ec2_web1.id
  port             = 80
}

resource "aws_lb_target_group_attachment" "weblb_tg2" {
  target_group_arn = aws_lb_target_group.webtg.arn
  target_id        = aws_instance.ec2_web2.id
  port             = 80
}
