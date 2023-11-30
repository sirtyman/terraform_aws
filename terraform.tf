terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "sirtyman-terraform"
    key    = "terraform.tfstate"
    region = "eu-central-1"
  }
}
