terraform {
  source = "../../../../modules/data-store/mysql"
}

include {
  path = find_in_parent_folders()
}

dependencies {
  paths = ["../../../global/s3", "../../../global/iam"]
}

inputs = {
  db_identifier_prefix = "terraform-up-and-running-staging"
  db_name              = "tuparstaging"
}
