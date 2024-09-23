resource "aws_subnet" "depi-pub-sub1" {
  vpc_id            = aws_vpc.depi-vpc.id
  cidr_block        = var.sub1_cider
  availability_zone = var.sub1_az

  tags = {
    Name = "depi-pub-sub1"
  }
}

resource "aws_subnet" "depi-pub-sub2" {
  vpc_id            = aws_vpc.depi-vpc.id
  cidr_block        = var.sub2_cider
  availability_zone = var.sub2_az

  tags = {
    Name = "depi-pub-sub2"
  }
}

resource "aws_subnet" "depi-pub-sub3" {
  vpc_id            = aws_vpc.depi-vpc.id
  cidr_block        = var.sub3_cider
  availability_zone = var.sub3_az

  tags = {
    Name = "depi-pub-sub3"
  }
}