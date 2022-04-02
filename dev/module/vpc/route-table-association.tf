# public rt
resource "aws_route_table_association" "public_a" {
	subnet_id      = aws_subnet.public_a.id
  	route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "pulbic_c" {
	subnet_id      = aws_subnet.public_c.id
	route_table_id = aws_route_table.public.id
}

# private rt
resource "aws_route_table_association" "private_a" {
	subnet_id      = aws_subnet.private_db_a.id
	route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "private_c" {
	subnet_id      = aws_subnet.private_db_c.id
	route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "private_db_a" {
	subnet_id      = aws_subnet.private_a.id
	route_table_id = aws_route_table.private.id
}

resource "aws_route_table_association" "private_db_c" {
	subnet_id      = aws_subnet.private_c.id
	route_table_id = aws_route_table.private.id
}