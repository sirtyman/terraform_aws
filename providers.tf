provider "aws" {
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
  region     = "eu-central-1"

  assume_role {
    role_arn = var.aws_role_arn
    duration = "900s"
  }
}
