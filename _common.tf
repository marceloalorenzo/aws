resource "aws_dynamodb_table" "dynamodb_terraform_lock" {
  name           = "TerraformLock"
  hash_key       = "LockID"
  read_capacity  = 20
  write_capacity = 20
  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    Name = "Terraform state lock table"
    App  = "TerraformLock"
  }
}
