resource "aws_internet_gateway" "this" {
    vpc_id = aws_vpc.this.id 
    tags = { 
		Name = "${var.env}-${var.project_name}-igw"
	}
}

resource "aws_eip" "nat_ip" {
	vpc = true
}

resource "aws_nat_gateway" "this" {
	allocation_id = aws_eip.nat_ip.id 
	subnet_id     = aws_subnet.public_a.id 
	tags = {
		Name = "${var.env}-${var.project_name}-ngw"
	}
}
