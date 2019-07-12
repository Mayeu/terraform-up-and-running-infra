variable "db_password" {
  description = "The password for the database"
  type        = string
}

variable "db_identifier_prefix" {
  description = "The identifier prefix of the database"
  type        = string
}

variable "aws_region" {
  description = "The AWS region to deploy the DB in"
  type        = string
}

variable "db_name" {
  description = "The name of the database"
  type        = string
}
