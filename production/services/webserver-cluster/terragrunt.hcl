terraform {
  source = "git::git@github.com:Mayeu/terraform-up-and-running-modules.git//services/webserver-cluster?ref=v0.0.1"
}

include {
  path = find_in_parent_folders()
}

dependencies {
  paths = ["../../../global/s3", "../../data-store/mysql"]
}

inputs = {
  cluster_name           = "webserver-production"
  db_remote_state_bucket = "mayeu-test-terraform-up-and-running-state"
  db_remote_state_key    = "production/data-store/mysql/terraform.tfstate"

  instance_type = "t2.micro"
  min_size      = 2
  max_size      = 3
}
