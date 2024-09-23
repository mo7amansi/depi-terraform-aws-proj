resource "aws_vpc" "depi-vpc" {
  cidr_block = var.vpc_cider

  tags = {
    Name = "depi-vpc"
  }
}