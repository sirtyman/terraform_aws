variable "aws_access_key" {}
variable "aws_secret_key" {}

variable "aws_region" {}

variable "ec2_instance_type" {
  default = "t2.micro"
}

variable "amis_by_region" {
  type = map(any)
}

