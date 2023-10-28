# Remote Backend 
terraform {
  cloud {
    organization = "Your-Terraform-Org-Name-Here"

    workspaces {
      name = "terraform-test-gha"
    }
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.52.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }
  required_version = ">= 1.1.0"
}

provider "aws" {
  region = "us-east-2"
}
