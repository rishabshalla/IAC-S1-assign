module "my-aws-ec2" {
  source        = "../"
  ami_type      = "ami-090fa75af13c156b4"
  instance_type = "t2.micro"
  ebs_size      = 4

}

module "my-aws-s3" {
  source      = "../../s3"
  bucket_name = "rishab-test-3"
}
module "my-aws-dynamoDB" {
  source = "../../dynamodb"
}
module "my-aws-iam-user" {
  source   = "../../IAM user"
  username = ["user1", "user2", "user3"]
  group    = "rishab-test-group"

}
