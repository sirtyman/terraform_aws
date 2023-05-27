variable "aws_access_key" {}
variable "aws_secret_key" {}

variable "aws_role_arn" {}

variable "aws_region" {
  type        = string
  description = "AWS region string"
  default     = "eu-central-1"
}
