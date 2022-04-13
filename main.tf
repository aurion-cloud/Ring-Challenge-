data "aws_ami" "aws_basic_linux_ami" {
  owners      = [var.aws_owner_id]
  most_recent = true
  filter {
    name   = "name"
    values = [var.aws_ami_name]
  }
}


data "aws_vpc" "main_vpc" {
  filter {
    name   = "tag:Name"
    values = [var.vpc_name]
  }
}

data "aws_subnet" "public-ring" {
  filter {
    name   = "tag:Name"
    values = [var.public_subnet_name]
  }
}
