resource "aws_vpc" "my_vpc" {
  cidr_block = "172.16.0.0/16"

  tags = {
    Name = "my_vpc",
    From = "terraform"
  }
}

resource "aws_subnet" "my_subnet_1" {
  vpc_id            = aws_vpc.my_vpc.id
  cidr_block        = "172.16.10.0/24"
  availability_zone = "eu-central-1a"

  tags = {
    Name = "my_subnet_1",
    From = "terraform"
  }
}
