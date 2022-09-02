resource "aws_route_table_association" "nykwon_rtas_weba" {
    subnet_id = aws_subnet.nykwon_weba.id
    route_table_id = aws_route_table.nykwon_rt.id
}

resource "aws_route_table_association" "nykwon_rtas_webc" {
    subnet_id = aws_subnet.nykwon_webc.id
    route_table_id = aws_route_table.nykwon_rt.id
}
