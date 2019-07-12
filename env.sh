export AWS_ACCESS_KEY_ID=$(pass show api/aws/terraform-test.access-key)
export AWS_SECRET_ACCESS_KEY=$(pass show api/aws/terraform-test.secret-key)

export TF_VAR_db_password=$(pass show api/aws/terraform-test.mysql-pass)
