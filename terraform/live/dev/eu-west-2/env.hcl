locals {
  environment = "dev"
  region      = "eu-west-2"
  name_prefix = "stage-control-dev"

  common_tags = {
    Project     = "stage-control"
    Environment = "dev"
    ManagedBy   = "terraform"
  }
}