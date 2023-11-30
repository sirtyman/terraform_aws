output "ec2_public_ip" {
  value = aws_instance.ec2_in_public_subnet.public_ip
}

output "ec2_instance_ami_id" {
  value = data.aws_ami.ami.id
}
