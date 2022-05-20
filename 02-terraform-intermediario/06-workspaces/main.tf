terraform {
  required_version = "1.1.9"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.13.0"
    }
  }

  backend "s3" {
    bucket         = "remote-state-045762655454"
    key            = "05-workspaces/terraform.tfstate"
    region         = "us-east-1"
    profile        = "corteztech"
    dynamodb_table = "tflock-remote-state-045762655454"
  }
}

provider "aws" {
  region  = lookup(var.aws_region, local.env)
  profile = "corteztech"
}

locals {
  env = terraform.workspace == "default" ? "dev" : terraform.workspace
}

resource "aws_instance" "web" {
  count = lookup(var.instance, local.env)["number"]

  ami           = lookup(var.instance, local.env)["ami"]
  instance_type = lookup(var.instance, local.env)["type"]

  tags = {
    Name = "Minha máquina web ${local.env}"
    Env  = local.env
  }
}