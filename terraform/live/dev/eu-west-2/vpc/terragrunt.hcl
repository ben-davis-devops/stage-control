include "root" {
  path = find_in_parent_folders("root.hcl")
}

locals {
  env = read_terragrunt_config(find_in_parent_folders("env.hcl"))
}

terraform {
  source = "../../../../modules/vpc"
}

inputs = {
  name_prefix = local.env.locals.name_prefix
  environment = local.env.locals.environment

  vpc_cidr = "10.0.0.0/16"

  availability_zones = [
    "eu-west-2a",
    "eu-west-2b"
  ]

  public_subnet_cidrs = [
    "10.0.1.0/24",
    "10.0.2.0/24"
  ]

  private_subnet_cidrs = [
    "10.0.11.0/24",
    "10.0.12.0/24"
  ]

  common_tags = local.env.locals.common_tags
}