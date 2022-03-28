resource "aws_vpc" "this" {
    cidr_block = "10.0.0.0/24" 
    enable_dns_hostnames = true 
    tags =  { 
      Name = "${var.project_name}-vpc"
	} 
}

resource "aws_subnet" "public_a" {
    vpc_id = aws_vpc.this.id 
    cidr_block = "10.0.0.128/26" 
    availability_zone = "${var.region_a}" 
    map_public_ip_on_launch = false 
    tags = { 
        Name = "${var.project_name}-pub-a"
	} 

}

resource "aws_subnet" "public_c" {
    vpc_id = aws_vpc.this.id 
    cidr_block = "10.0.0.192/26" 
    availability_zone = "${var.region_c}" 
    map_public_ip_on_launch = false 
    tags = { 
        Name = "${var.project_name}-pub-c"
	} 

}

resource "aws_subnet" "private_a" {
    vpc_id = aws_vpc.this.id 
    cidr_block = "10.0.0.0/26" 
    availability_zone = "${var.region_a}" 
    map_public_ip_on_launch = false 
    tags = { 
        Name = "${var.project_name}-pri-a"
	} 
}

resource "aws_subnet" "private_c" {
    vpc_id = aws_vpc.this.id 
    cidr_block = "10.0.0.64/26" 
    availability_zone = "${var.region_c}"  
    map_public_ip_on_launch = false 
    tags = { 
        Name = "${var.project_name}-pri-c"
	} 
}

resource "aws_subnet" "private_db_a" {
    vpc_id = aws_vpc.this.id 
    cidr_block = "10.0.1.0/26" 
    availability_zone = "${var.region_a}" 
    map_public_ip_on_launch = false 
    tags = { 
        Name = "${var.project_name}-db-a"
    } 
}

resource "aws_subnet" "private_db_c" {
    vpc_id = aws_vpc.this.id 
    cidr_block = "10.0.1.64/26"  
    availability_zone = "${var.region_c}"  
    map_public_ip_on_launch = false 
    tags = { 
        Name = "${var.project_name}-db-c"
    } 
}
