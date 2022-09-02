resource "aws_db_instance" "nykwon_db" {
  allocated_storage = 20
  storage_type = "gp2"
  engine = "mysql"
  engine_version = "8.0"
  instance_class = "db.t2.micro"
  name = "wordpress"
  identifier = "mydb"
  username = "admin"
  password = "It12345!"
  parameter_group_name = "default.mysql8.0"
  availability_zone = "ap-northeast-2a"
  db_subnet_group_name = aws_db_subnet_group.nykwon_dbsg.id
  vpc_security_group_ids = [ aws_security_group.nykwon_sg.id ]
  skip_final_snapshot = true
  tags = {
    "Name" = "nykwon-mysql"
  }
}

resource "aws_db_subnet_group" "nykwon_dbsg" {
  name = "nykwon-dbsg"
  subnet_ids = [aws_subnet.nykwon_dba.id, aws_subnet.nykwon_dbc.id]
}