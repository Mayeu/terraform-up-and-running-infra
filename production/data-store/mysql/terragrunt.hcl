terraform {
  source = "../../../modules/data-store/mysql"
}

include {
  path = find_in_parent_folders()
}

dependencies {
  paths = ["../../../global/s3"]
}

inputs = {
  db_identifier_prefix = "terraform-up-and-running-production"
  db_name              = "tuparproduction"
}
