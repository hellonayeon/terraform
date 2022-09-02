resource "aws_autoscaling_attachment" "nykwon_autoatt" {
  autoscaling_group_name = aws_autoscaling_group.nykwon_autosg.id
  lb_target_group_arn = aws_lb_target_group.nykwon_albtg.id
}