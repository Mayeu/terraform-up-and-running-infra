provider "aws" {
  region = var.aws_region
}

terraform {
  # The configuration for this backend will be filled in by Terragrunt
  backend "s3" {}
}

resource "aws_db_instance" "mysql" {
  identifier_prefix = var.db_identifier_prefix
  engine            = "mysql"
  allocated_storage = 10
  instance_class    = "db.t2.micro"
  name              = var.db_name
  username          = "admin"

  # How should we set the password?
  password = var.db_password

  skip_final_snapshot = true
}
