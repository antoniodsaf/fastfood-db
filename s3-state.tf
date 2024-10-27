terraform {
  backend "s3" {
    bucket = "fastfood-tf"
    key = "db/terraform.tfstate"
    region = "us-east-1"
  }
}