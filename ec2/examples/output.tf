output "module-output-user" {
  value = module.my-aws-iam-user.output-user
}
output "module-ec2-instances" {
  value = module.my-aws-ec2.ec2_instances
}
# output "module-ebs-size" {
#   value = module.my-aws-ec2.ebs_volume
# }
output "module-s3-bucket" {
  value = module.my-aws-s3.s3-bucket
}
output "module-dynamoDB" {
  value = module.my-aws-dynamoDB.dynamoDB_tables
}
