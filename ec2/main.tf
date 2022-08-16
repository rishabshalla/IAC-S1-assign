resource "aws_instance" "rishab-ec2" {
  ami           = var.ami_type      #"ami-090fa75af13c156b4"
  instance_type = var.instance_type #"t2.micro"

  tags = {
    name    = "rishab-ec2"
    purpose = "training"
    owner   = "rishab"
  }
}

resource "aws_ebs_volume" "rishab-volume" {
  count             = var.condition ? 1 : 0
  availability_zone = "ap-south-1a"
  size              = var.ebs_size

  tags = {
    name    = "rishab-test-volume"
    owner   = "Rishab"
    purpose = "test"

  }
}
