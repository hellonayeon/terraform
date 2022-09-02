resource "aws_eip" "nykwon_natip" {
    vpc = true
}

resource "aws_nat_gateway" "nykwon_natgw" {
    allocation_id = aws_eip.nykwon_natip.id
    subnet_id = aws_subnet.nykwon_weba.id
    tags = {
        Name = "nykwon-natgw"
    }

    depends_on = [
      aws_internet_gateway.nykwon_ig
    ]
}