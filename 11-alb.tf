resource "aws_lb" "nykwon_lb" {
    name = "nykwon-lb"
    internal = false
    load_balancer_type = "application"
    security_groups = [aws_security_group.nykwon_sg.id]
    subnets = [aws_subnet.nykwon_weba.id,aws_subnet.nykwon_webc.id]

    tags = {
        Name = "nykwon-lb"
    }
}

output "dns_name" {
    value = aws_lb.nykwon_lb.dns_name
}