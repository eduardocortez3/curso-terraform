locals {
  ip_filepath = "ips.json"
  common_tags = {
    Service     = "Curso Terraform"
    Environment = var.environment
    Managedby   = "Terraform"
    Owner       = "Eduardo Cortez"
  }
}