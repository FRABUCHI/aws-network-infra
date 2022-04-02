resource "aws_route_table" "public" {
	vpc_id = aws_vpc.this.id
  
	tags = { 
		Name = "${var.env}-${var.project_name}-pub-rt" 
	}
  	
	route {
		cidr_block = "0.0.0.0/0"
		gateway_id = "${aws_internet_gateway.this.id}"
  }
}

resource "aws_route_table" "private" {
	vpc_id = aws_vpc.this.id 
	
	tags = { 
		Name = "${var.env}-${var.project_name}-pri-rt"
	}

	route {
		cidr_block = "0.0.0.0/0"
		gateway_id = "${aws_nat_gateway.this.id}"
	}
}
