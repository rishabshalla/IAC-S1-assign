terraform {
  backend "s3" {
    bucket         = "rishab-test-3"
    key            = "aws11.tfstate"
    region         = "us-east-1"
    dynamodb_table = "rishab-160822"
  }
}
