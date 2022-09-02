resource "aws_ami_from_instance" "nykwon_ami" {
    name = "nykwon-ami"
    source_instance_id = aws_instance.nykwon_ec2.id
    depends_on = [
        aws_instance.nykwon_ec2
    ]
}