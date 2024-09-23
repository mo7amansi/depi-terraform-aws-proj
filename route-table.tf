resource "aws_route_table" "depi-pub-rt" {
  vpc_id = aws_vpc.depi-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.depi-igw.id
  }


  tags = {
    Name = "depi-pub-rt"
  }
}

resource "aws_route_table_association" "depi-pub-rta1" {
  subnet_id      = aws_subnet.depi-pub-sub1.id
  route_table_id = aws_route_table.depi-pub-rt.id
}

resource "aws_route_table_association" "depi-pub-rta2" {
  subnet_id      = aws_subnet.depi-pub-sub2.id
  route_table_id = aws_route_table.depi-pub-rt.id
}

resource "aws_route_table_association" "depi-pub-rta3" {
  subnet_id      = aws_subnet.depi-pub-sub3.id
  route_table_id = aws_route_table.depi-pub-rt.id
}