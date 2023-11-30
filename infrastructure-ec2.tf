resource "aws_security_group" "ec2_instance_security_group" {
  name        = "HTTP/HTTPs traffic"
  description = "Security group for EC2 instances"

  vpc_id = aws_vpc.vpc.id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Security group for EC2",
    From = "terraform"
  }
}

resource "aws_instance" "ec2_in_public_subnet" {
  ami                    = data.aws_ami.ami.id
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.public_subnet.id
  vpc_security_group_ids = [aws_security_group.ec2_instance_security_group.id]

  user_data = file("userdata.tpl")

  tags = {
    Name = "ec2_public_access",
    From = "terraform"
  }
}

# resource "aws_instance" "ec2_in_private_subnet" {
#   ami                    = "ami-0db3b3e2b9f049df7"
#   instance_type          = "t2.micro"
#   subnet_id              = aws_subnet.private_subnet.id
#   vpc_security_group_ids = [aws_security_group.ec2_instance_security_group.id]

#   tags = {
#     Name = "ec2_private",
#     From = "terraform"
#   }
# }
