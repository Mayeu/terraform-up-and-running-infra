terraform {
  source = "git::git@github.com:Mayeu/terraform-up-and-running-modules.git//data-store/mysql?ref=v0.0.1"
}

include {
  path = find_in_parent_folders()
}

dependencies {
  paths = ["../../../global/s3", "../../../global/iam"]
}

inputs = {
  db_identifier_prefix = "terraform-up-and-running-production"
  db_name              = "tuparproduction"
}
