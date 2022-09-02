resource "aws_launch_configuration" "nykwon_autola" {
  name = "nykwon-autola"
  image_id = aws_ami_from_instance.nykwon_ami.id
  instance_type = "t2.micro"
  iam_instance_profile = "admin_role"
  security_groups = [aws_security_group.nykwon_sg.id]
  key_name = "nykwon-key"
  user_data = <<-EOF
	  #! /bin/bash
	  systemctl enable httpd
	  systemctl start httpd
	  EOF
}