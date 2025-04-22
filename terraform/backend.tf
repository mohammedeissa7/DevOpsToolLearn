terraform {
  backend "s3" {
    bucket = "bootcamp-learn-terraform-1"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
