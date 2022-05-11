terraform {
  required_version = "1.1.9"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.13.0"
    }
  }
}
provider "aws" {
  region  = "us-east-1"
  profile = "corteztech"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-12341231413241207809789789"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Owner       = "Eduardo Cortez"
    UpdatedAt   = "2022-05-10"
  }
}

resource "aws_s3_bucket_acl" "acl_private" {
  bucket = aws_s3_bucket.my-test-bucket.id
  acl    = "private"
}