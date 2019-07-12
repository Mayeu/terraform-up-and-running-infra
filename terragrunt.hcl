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

