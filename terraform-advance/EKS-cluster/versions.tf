
terraform {
  required_version = ">= 0.12"
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.1.0"
    }

    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.68.0"
    }
 

  }
}