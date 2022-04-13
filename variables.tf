variable "aws_owner_id" {
  description = "Contains the OWNER ID of the ami for amazon linux"
  type        = string
}

variable "aws_ami_name" {
  description = " Contains the name of the ami"
  type        = string
}

variable "vpc_name" {
  description = "Contains the name of the vpc for my my project"
}

variable "public_subnet_name" {
  type = string
}

variable "my_keypair" {
  type = string
}

variable "ec2_type" {
  type    = string
  default = "t2.small"
}

variable "number_of_instances" {
  description = "Number of instances from my public subnet"
}