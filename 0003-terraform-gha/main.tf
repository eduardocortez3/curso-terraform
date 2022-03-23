terraform {
  required_version = "1.1.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "3.74.0"
    }
  }
  backend "s3" {}
}
provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile

  default_tags {
    tags = {
      Project   = "Terraform GHA Setup"
      CreatedAt = "2022-03-22"
      ManagedBy = "Terraform"
      Owner     = "Eduardo Cortez"
    }
  }
}
