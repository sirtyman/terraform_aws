locals {
  vpc_cidr = "10.192.0.0/16"
}

resource "aws_vpc" "vpc" {
  cidr_block = local.vpc_cidr

  tags = {
    Name = "vpc",
    From = "terraform"
  }
}
