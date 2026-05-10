remote_state {
  backend = "s3"

  config = {
    bucket         = "stage-control-shared-terraform-state"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "eu-west-2"
    dynamodb_table = "stage-control-shared-terraform-locks"
    encrypt        = true
  }
}

locals {
  project_name = "stage-control"
}