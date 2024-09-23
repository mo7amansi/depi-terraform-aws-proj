resource "aws_internet_gateway" "depi-igw" {
  vpc_id = aws_vpc.depi-vpc.id

  tags = {
    Name = "depi-igw"
  }
}