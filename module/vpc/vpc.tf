resource "aws_vpc" "this" {
    cidr_block = "10.0.0.0/16" 
    enable_dns_hostnames = true 
    tags =  { 
      Name = "${var.project_name}-vpc"
	} 
}

resource "aws_subnet" "public_a" {
    vpc_id = aws_vpc.this.id 
    cidr_block = "" 
    availability_zone = "${var.region_a}" 
    map_public_ip_on_launch = false 
    tags = { 
        Name = "${var.project_name}-pub-a"
	} 

}

resource "aws_subnet" "public_c" {
    vpc_id = aws_vpc.this.id 
    cidr_block = "${var.subnet_pub_b_cidr}" 
    availability_zone = "ap-northeast-2c" 
    map_public_ip_on_launch = false 
    tags = { 
        Name = "${var.project_name}-pub-c"
	} 

}

resource "aws_subnet" "private_a" {
    vpc_id = aws_vpc.this.id 
    cidr_block = "${var.subnet_pri_a_cidr}" 
    availability_zone = "${var.region_a}" 
    map_public_ip_on_launch = false 
    tags = { 
        Name = "${var.project_name}-pri-a"
	} 
}

resource "aws_subnet" "private_c" {
    vpc_id = aws_vpc.this.id 
    cidr_block = "" 
    availability_zone = "${var.region_c}"  
    map_public_ip_on_launch = false 
    tags = { 
        Name = "${var.project_name}-pri-c"
	} 
}

resource "aws_subnet" "private_db_a" {
    vpc_id = aws_vpc.this.id 
    cidr_block = "" 
    availability_zone = "${var.region_a}" 
    map_public_ip_on_launch = false 
    tags = { 
        Name = "${var.project_name}-db-a"
    } 
}

resource "aws_subnet" "private_db_b" {
    vpc_id = aws_vpc.this.id 
    cidr_block = "" 
    availability_zone = "${var.region_c}"  
    map_public_ip_on_launch = false 
    tags = { 
        Name = "${var.project_name}-db-c"
    } 
}
