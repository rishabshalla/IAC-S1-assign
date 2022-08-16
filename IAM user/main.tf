# to add iam users to group

resource "aws_iam_group_membership" "rishab-test-membership" {
  name = "rishab-membership"

  # users = var.username   # users name
  users = [for i in aws_iam_user.rishab-users : i.name]


  group = aws_iam_group.rishab-group.name # group name
}

# to create user group

resource "aws_iam_group" "rishab-group" {
  name = var.group
  #   path = "/users/"
}

# to create iam users
resource "aws_iam_user" "rishab-users" {
  count = length(var.username)
  name  = var.username[count.index]
  #   path = "/system/"

  tags = {
    tag-key = "rishab-test"
  }
}
