terraform {
 required_providers {
    aws = {
      source = "hashicorp/aws"
      version = ">= 5.81.0"
    }
  }
  
  required_version = ">= 1.0.0"
}

provider "aws" {
 region = "ap-south-1"
}

resource "aws_instance" "app_server" {
  ami  = "ami-02f829375c976f810"
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform_Demo2"
  }
}
