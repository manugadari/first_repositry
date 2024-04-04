terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAX75DMDWK76O3NIMV"
  secret_key = "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"
}
resource "aws_instance" "Manojkumar-LT" {
  ami           = "ami-830c94e3"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform_Demo"
  }
}
