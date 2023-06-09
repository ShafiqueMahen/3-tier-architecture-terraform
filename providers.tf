terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
    }
    null = {
      source = "hashicorp/null"
      version = "~> 3.2.0"
    }
    local = {
      source = "hashicorp/local"
      version = "~> 2.4.0"
    }  
  }
}

provider "aws" {
  region = var.aws_region
} 