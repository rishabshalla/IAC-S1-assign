resource "aws_s3_bucket" "rishab-s3" {
  bucket = var.bucket_name #"rishab-test-3"

  tags = {
    name        = "rishab"
    environment = "Dev"
  }
}