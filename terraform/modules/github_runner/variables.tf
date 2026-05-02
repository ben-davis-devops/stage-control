variable "name_prefix" {
  description = "Prefix used for naming runner resources"
  type        = string
}

variable "environment" {
  description = "Environment name"
  type        = string
}

variable "ami_id" {
  description = "AMI ID for the runner instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type for the runner"
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID where the runner instance will be launched"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for the runner security group"
  type        = string
}

variable "associate_public_ip_address" {
  description = "Whether to associate a public IP address"
  type        = bool
  default     = true
}

variable "common_tags" {
  description = "Common tags applied to runner resources"
  type        = map(string)
  default     = {}
}