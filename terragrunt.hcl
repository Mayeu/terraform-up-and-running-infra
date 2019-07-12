remote_state {
  backend = "s3"
  config = {
    bucket = "mayeu-test-terraform-up-and-running-state"
    key    = "${path_relative_to_include()}/terraform.tfstate"
    region = "us-east-2"

    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}


inputs = {
  aws_region                   = "us-east-2"
  tfstate_global_bucket        = "mayeu-test-terraform-up-and-running-state"
  tfstate_gloabl_bucket_region = "us-east-2"
}
