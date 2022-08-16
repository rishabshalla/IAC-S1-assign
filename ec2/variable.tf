variable "ami_type" {
  type = string

}
variable "instance_type" {
  type = string
}
variable "ebs_size" {
  type = number
}
variable "condition" {
  default = true
}
