data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "crushcandy"
    key    = "mobile_first_application/vpc_terraform/terraform.tfstate"
    region = "eu-north-1"
  }
}



# terraform {
#   backend "s3" {
#     bucket         = "crushcandy"
#     key            = "mobile_first_application/rds_terrform/terraform.tfstate"
#     region         = "eu-north-1"
#     dynamodb_table = "terraform-locks"
#     encrypt        = true
#   }
# }