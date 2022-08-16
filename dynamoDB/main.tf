resource "aws_dynamodb_table" "rishab-dynamodb" {
  name           = "rishab-160822"
  hash_key       = "LockID"
  read_capacity  = 20
  write_capacity = 20

  attribute {
    name = "LockID"
    type = "S"
  }
}
