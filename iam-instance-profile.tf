resource "aws_iam_instance_profile" "iam_instance_profile" {
  name        = var.name
  name_prefix = var.name_prefix
  path        = var.path
  role        = var.role
  
  lifecycle {
    create_before_destroy = true
  }
}
