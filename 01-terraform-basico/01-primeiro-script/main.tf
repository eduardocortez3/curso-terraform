terraform {
  required_version = "1.1.9"
  required_providers {
      aws = {
          source = "hashicorp/aws"
          version = "4.13.0"
      }
  }
}
provider "aws" {
  region  = "us-east-1"
  profile = "corteztech"
}

resource "aws_s3_bucket" "my-test-bucket" {
  bucket = "my-tf-test-bucket-123412314132412"
  
  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    Managedby   = "Terraform"
  }
}

resource "aws_s3_bucket_acl" "acl_private" {
  bucket = aws_s3_bucket.my-test-bucket.id
  acl    = "private"
}