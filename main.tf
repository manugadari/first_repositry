provider "aws" {
  region     = "us-west-2"
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }


  required_version = ">= 1.2.0"
}

resource "aws_instance" "Manojkumar-LT" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform_Demo"
  }
}
