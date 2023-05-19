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

# resource "aws_network_interface" "network_iface_1" {
#   subnet_id       = aws_subnet.my_subnet_1.id
#   private_ips     = ["172.16.10.100"]
#   security_groups = [aws_security_group.ec2_instance_security_group.id]

#   tags = {
#     Name = "primary_network_interface",
#     From = "terraform"
#   }
# }
