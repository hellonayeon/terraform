resource "aws_security_group" "nykwon_sg" {
    name = "nykwon-sg"
    vpc_id = aws_vpc.nykwon_vpc.id
    description = "aws-ssh-ftp-mysql-http"

ingress = [
    {
        description = "ssh"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
        prefix_list_ids = null
        security_groups = null
        self = null
    },
    {
        description = "http"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
        prefix_list_ids = null
        security_groups = null
        self = null
    },
    {
        description = "mysql"
        from_port = 3306
        to_port = 3306
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
        prefix_list_ids = null
        security_groups = null
        self = null
    },
    {
        description = "ping"
        from_port = -1
        to_port = -1
        protocol = "icmp"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
        prefix_list_ids = null
        security_groups = null
        self = null
    },
    {
        description = "ftp"
        from_port = 21
        to_port = 21
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
        prefix_list_ids = null
        security_groups = null
        self = null
    },
    {
        description = "ftp-data"
        from_port = 65000
        to_port = 65100
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
        prefix_list_ids = null
        security_groups = null
        self = null
    }

]

egress = [
    {
        description = "all"
        from_port = 0
        to_port = 0
        protocol = -1
        cidr_blocks = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
        prefix_list_ids = null
        security_groups = null
        self = null
    }
]

tags = {
    Name = "nykwon-sg"
}

}