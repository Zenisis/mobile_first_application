terraform {
  backend "s3" {
    bucket         = "crushcandy"
    key            = "mobile_first_application/vpc_terraform/terraform.tfstate"
    region         = "eu-north-1"
    dynamodb_table = "terraform-locks"
    encrypt        = true
  }
}