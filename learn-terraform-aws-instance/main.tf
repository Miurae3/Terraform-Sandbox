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
  region = "sa-east-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0e66f5495b4efdd0f"
  instance_type = "t2.micro"

  tags = {
    Name = var.instance_name
  }
}