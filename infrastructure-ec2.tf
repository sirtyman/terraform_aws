resource "aws_instance" "my_ec2_instance" {
  ami                    = "ami-03aefa83246f44ef2"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.ec2_instance_security_group.id]

  tags = {
    Name = "my_ec2_instance",
    From = "terraform"
  }
}
