resource "aws_route_table" "route_table_public" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "route table for public traffic",
    From = "terraform"
  }
}

resource "aws_route_table_association" "prod-crta-public-subnet-1" {
    subnet_id = aws_subnet.public_subnet.id
    route_table_id = aws_route_table.route_table_public.id
}
