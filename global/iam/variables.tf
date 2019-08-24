variable "user_names" {
  description = "Create IAM users with these names"
  type        = list(string)
  default     = ["neo", "trinity", "morpheus"]
}

variable "aws_region" {
  description = "The AWS region to deploy the server to"
  type        = string
}
