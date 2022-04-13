terraform {
  backend "s3" {
    bucket         = "talent-academy-536371856221-tfstates"
    key            = "sprint2/week1/training-ring-challenge/terraform.tfstates"
    dynamodb_table = "terraform-lock"
  }
}