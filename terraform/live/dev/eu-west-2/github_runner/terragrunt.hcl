include "root" {
  path = find_in_parent_folders()
}

locals {
  env = read_terragrunt_config(find_in_parent_folders("env.hcl"))
}

terraform {
  source = "../../../../modules/github_runner"
}

dependency "vpc" {
  config_path = "../vpc"
}

inputs = {
  name_prefix = local.env.locals.name_prefix
  environment = local.env.locals.environment

  ami_id        = "ami-011c04cb040289c2a"
  instance_type = "t3.micro"

  vpc_id    = dependency.vpc.outputs.vpc_id
  subnet_id = dependency.vpc.outputs.public_subnet_ids[0]

  associate_public_ip_address = true

  common_tags = local.env.locals.common_tags
}