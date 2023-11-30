locals {
  public_subnet_cidr  = "10.192.1.0/24"
  private_subnet_cidr = "10.192.2.0/24"
}

resource "aws_subnet" "public_subnet" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = local.public_subnet_cidr
  availability_zone = "eu-central-1a"
  # Make it a public subnet
  map_public_ip_on_launch = true

  tags = {
    Name = "public_subnet",
    From = "terraform"
  }
}

# resource "aws_subnet" "private_subnet" {
#   vpc_id            = aws_vpc.vpc.id
#   cidr_block        = local.public_subnet_cidr
#   availability_zone = "eu-central-1a"

#   tags = {
#     Name = "private_subnet",
#     From = "terraform"
#   }
# }
