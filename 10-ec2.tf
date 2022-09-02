resource "aws_instance" "nykwon_ec2" {
    ami = "ami-066d41d96fc160063"
    instance_type = "t2.micro"
    key_name = "nykwon-key"
    security_groups = [aws_security_group.nykwon_sg.id]
    availability_zone = "ap-northeast-2a"
    private_ip = "10.0.0.11"    // 10.0.0.0. ~ 10.0.0.255, AWS 에서 1, 2, 254 번 예약해서 사용
    subnet_id = aws_subnet.nykwon_weba.id
    associate_public_ip_address = true
    user_data = file("./install.sh")
    tags = {
        Name = "web-1"
    }
}

output "public_ip" {
    value = aws_instance.nykwon_ec2.public_ip
}