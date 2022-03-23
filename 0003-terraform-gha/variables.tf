variable "aws_region" {
  type        = string
  description = "The AWS Region to deploy to"
  default     = "eu-central-1"
}

variable "aws_profile" {
  type        = string
  description = "The AWS profile to use to execute the comands"
  default     = "corteztech"
}

variable "environment" {
  type        = string
  description = "The environment to deploy to"
  default     = "dev"
}

variable "instance_type" {
  type        = string
  description = "The instance power"
}
