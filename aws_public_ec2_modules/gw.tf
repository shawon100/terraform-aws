resource "aws_internet_gateway" "gateway" {
  vpc_id = aws_vpc.vpc.id
  tags = var.gateway_tag
}
#routing table
resource "aws_route_table" "RouteTable" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gateway.id
  }

  tags = var.route_tag
}

#associate public subnet with route table
resource "aws_route_table_association" "associate" {
  subnet_id      = aws_subnet.public-subnet.id
  route_table_id = aws_route_table.RouteTable.id
}
