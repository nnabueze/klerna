terraform {
    required_version = ">= 0.14.4"
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "2.70.0"
        }
    }
}

provider "aws" {
  region = var.aws_region 
  shared_credentials_file = var.aws_credentials_file
  profile = var.aws_profile 
}
