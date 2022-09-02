resource "aws_route_table" "nykwon_rt" {
    vpc_id = aws_vpc.nykwon_vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.nykwon_ig.id
    }

    tags = {
        Name = "nykwon-rt"
    }
}