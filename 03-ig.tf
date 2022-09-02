resource "aws_internet_gateway" "nykwon_ig" {
    vpc_id = aws_vpc.nykwon_vpc.id
    
    tags = {
        Name = "nykwon-ig"
    }
}