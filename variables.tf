variable "aws_access_key" {}
variable "aws_secret_key" {}

variable "aws_region" {
  type        = string
  description = "AWS region string"
  default     = "eu-central-1"
}

variable "ec2_instance_type" {
  default = "t2.micro"
}
