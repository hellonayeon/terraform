resource "aws_lb_listener" "nykwon_albli" {
    load_balancer_arn = aws_lb.nykwon_lb.arn
    port = 80
    protocol = "HTTP"

    default_action {
        type = "forward"
        target_group_arn = aws_lb_target_group.nykwon_albtg.arn
    }
}