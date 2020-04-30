provider "aws" {
  region  = var.aws-region
  profile = "personal"
}

terraform {
  backend "s3" {
    profile        = "personal"
    bucket         = "cassidy-tfstate"
    dynamodb_table = "terraform-dynamodb-table"
    region         = "us-east-1"
    key            = "route53/terraform.tfstate"
    encrypt        = true
  }
}
