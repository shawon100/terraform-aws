resource "aws_internet_gateway" "gw" {
  vpc_id = aws_vpc.dev-vpc.id
  tags = {
    Name = "gateway"
  }
}
#routing table
resource "aws_route_table" "vpcRouteTable" {
  vpc_id = aws_vpc.dev-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "gwroutetable"
  }
}

#associate public subnet with route table
resource "aws_route_table_association" "associate" {
  subnet_id      = aws_subnet.dev-public-subnet.id
  route_table_id = aws_route_table.vpcRouteTable.id
}
