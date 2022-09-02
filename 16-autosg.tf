resource "aws_placement_group" "nykwon_pg" {
  name = "nykwon-pg"
  strategy = "cluster"
}

resource "aws_autoscaling_group" "nykwon_autosg" {
  name = "nykwon-autosg"
  min_size = 1
  max_size = 10
  health_check_grace_period = 60
  health_check_type = "EC2"
  desired_capacity = 2
  force_delete = false
  launch_configuration = aws_launch_configuration.nykwon_autola.id
#  placement_group = aws_placement_group.nykwon_pg.id
  vpc_zone_identifier = [aws_subnet.nykwon_weba.id, aws_subnet.nykwon_webc.id]
}