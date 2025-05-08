terraform {
  backend "s3" {
    bucket         = "s3-sandbox-terraform-state-996117278485-us-east-1"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    # dynamodb_table = "dynamodb-sandbox-terraform-state-996117278485-us-east-1"
    encrypt        = true
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.52.0"
    }

  }
}
