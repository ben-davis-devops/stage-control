variable "aws_region" {
  description = "AWS region for bootstrap resources"
  type        = string
  default     = "eu-west-2"
}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "stage-control"
}

variable "environment" {
  description = "Bootstrap environment name"
  type        = string
  default     = "shared"
}
