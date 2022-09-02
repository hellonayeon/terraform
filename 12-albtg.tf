resource "aws_lb_target_group" "nykwon_albtg" {
    name = "nykwon-albtg"
    port = 80
    protocol = "HTTP"
    vpc_id = aws_vpc.nykwon_vpc.id

    health_check {
        enabled = true
        healthy_threshold = 3
        interval = 5
        matcher = "200"
        path = "/health.html"
        port = "traffic-port"
        protocol = "HTTP"
        timeout = 2
        unhealthy_threshold = 3
    }
}

# resource "aws_lb_target_group_attachment" "nykwon_tgatt" {
#     target_group_arn = aws_lb_target_group.nykwon_albtg.arn
#     target_id = aws_instance.nykwon_ec2.id
#     port = 80
# }