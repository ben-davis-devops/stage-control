include "root" {
  path = find_in_parent_folders("root.hcl")
}

locals {
  env = read_terragrunt_config(find_in_parent_folders("env.hcl"))
}

terraform {
  source = "../../../../modules/eks"
}

dependency "vpc" {
  config_path = "../vpc"
}

inputs = {
  name_prefix        = local.env.locals.name_prefix
  environment        = local.env.locals.environment
  cluster_name       = "${local.env.locals.name_prefix}-eks"
  kubernetes_version = "1.35"

  private_subnet_ids = dependency.vpc.outputs.private_subnet_ids

  desired_size = 2
  min_size     = 1
  max_size     = 3

  instance_types = ["t3.medium"]

  common_tags = local.env.locals.common_tags
}