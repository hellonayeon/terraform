resource "aws_route_table_association" "nykwon_rtas_wasa" {
    subnet_id = aws_subnet.nykwon_wasa.id
    route_table_id = aws_route_table.nykwon_natgwrt.id
}

resource "aws_route_table_association" "nykwon_rtas_wasc" {
    subnet_id = aws_subnet.nykwon_wasc.id
    route_table_id = aws_route_table.nykwon_natgwrt.id
}

resource "aws_route_table_association" "nykwon_rtas_dba" {
    subnet_id = aws_subnet.nykwon_dba.id
    route_table_id = aws_route_table.nykwon_natgwrt.id
}

resource "aws_route_table_association" "nykwon_rtas_dbc" {
    subnet_id = aws_subnet.nykwon_dbc.id
    route_table_id = aws_route_table.nykwon_natgwrt.id
}