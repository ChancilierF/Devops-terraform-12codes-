terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.61.0"
    }
  }
}

provider "aws" {
  
  region = "us-east-1"
}

/*
resource "aws_iam_group" "grp1" {
    name = "manager24"
    lifecycle {
        prevent_destroy = false
      

    }
  
}

resource "aws_iam_user" "user1" {
    name = "chancel"
    depends_on = [ aws_iam_group.grp1 ]
  
} 
*/

resource "aws_instance" "server1" {
    ami = "ami-0a699202e5027c10d"
    instance_type = "t3.small"
    subnet_id = "subnet-01b0b114b897268f5"
    key_name = "keyserv"
    lifecycle {
      create_before_destroy = true
    }
  
}