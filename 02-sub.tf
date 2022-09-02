resource "aws_subnet" "nykwon_weba" {
    vpc_id = aws_vpc.nykwon_vpc.id
    cidr_block = "10.0.0.0/24"
    availability_zone = "ap-northeast-2a"
    tags = {
        Name = "nykwon-weba"
    }
}

resource "aws_subnet" "nykwon_webc" {
    vpc_id = aws_vpc.nykwon_vpc.id
    cidr_block = "10.0.1.0/24"
    availability_zone = "ap-northeast-2c"
    tags = {
        Name = "nykwon-webc"
    }
}

resource "aws_subnet" "nykwon_wasa" {
    vpc_id = aws_vpc.nykwon_vpc.id
    cidr_block = "10.0.2.0/24"
    availability_zone = "ap-northeast-2a"
    tags = {
        Name = "nykwon-wasa"
    }
}

resource "aws_subnet" "nykwon_wasc" {
    vpc_id = aws_vpc.nykwon_vpc.id
    cidr_block = "10.0.3.0/24"
    availability_zone = "ap-northeast-2c"
    tags = {
        Name = "nykwon-wasc"
    }
}

resource "aws_subnet" "nykwon_dba" {
    vpc_id = aws_vpc.nykwon_vpc.id
    cidr_block = "10.0.4.0/24"
    availability_zone = "ap-northeast-2a"
    tags = {
        Name = "nykwon-dba"
    }
}

resource "aws_subnet" "nykwon_dbc" {
    vpc_id = aws_vpc.nykwon_vpc.id
    cidr_block = "10.0.5.0/24"
    availability_zone = "ap-northeast-2c"
    tags = {
        Name = "nykwon-dbc"
    }
}