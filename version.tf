#terraform version

terraform {
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~>4.60.0"
    }
  }  
  #required_version = "1.4.4"
}

provider "aws" {
    region = "us-east-1"
  
}