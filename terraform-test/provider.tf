provider "aws" {
  region = var.region

  default_tags {
    tags = {
      Environment  = "Sandbox"
      CustomerName = "Sandbox"
      CreatedBy    = "Terraform"
      Owner        = "MidLink"
    }
  }
}