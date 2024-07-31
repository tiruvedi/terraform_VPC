resource "aws_vpc" "main" {
cidr_block = "10.0.0.0/16"  

tags = {
    Name = "Project VPC"
}
}

resource "aws_route_table" "second_rt" {
 vpc_id = aws_vpc.main.id
 
 route {
   cidr_block = "0.0.0.0/0"
   gateway_id = aws_internet_gateway.gw.id
 }
 
 tags = {
   Name = "2nd Route Table"
 }
}