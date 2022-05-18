terraform {
  required_version = "1.1.9"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.13.0"
    }
  }
  backend "s3" {
    bucket  = "tfstate-045762655454"
    key     = "dev/03-data-sources-s3/terraform.tfstate"
    region  = "us-east-1"
    profile = "corteztech"
  }
}



provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}