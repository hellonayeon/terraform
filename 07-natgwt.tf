resource "aws_route_table" "nykwon_natgwrt" {
    vpc_id = aws_vpc.nykwon_vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_nat_gateway.nykwon_natgw.id
    }

    tags = {
        Name = "nykwon-natgwrt"
    }
}