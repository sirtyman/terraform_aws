resource "aws_instance" "ec2_instance_1" {
  ami           = var.amis_by_region[var.aws_region]
  instance_type = var.ec2_instance_type
}
