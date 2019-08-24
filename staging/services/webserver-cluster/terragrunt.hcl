terraform {
  source = "../../../../modules/services/webserver-cluster"
}

include {
  path = find_in_parent_folders()
}

dependencies {
  paths = ["../../../global/s3", "../../data-store/mysql", "../../../global/iam"]
}

inputs = {
  cluster_name           = "webserver-staging"
  db_remote_state_bucket = "mayeu-test-terraform-up-and-running-state"
  db_remote_state_key    = "staging/data-store/mysql/terraform.tfstate"

  instance_type        = "t2.micro"
  min_size             = 1
  max_size             = 1
  enable_autoscaling   = false
  enable_new_user_data = true
}
