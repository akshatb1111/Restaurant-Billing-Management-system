terraform {
  required_providers {
  aws = {
      source = "hashicorp/aws"
      version = "~>5.0"
      }
   }
}
   provider "aws" {
      region     = "ap-south-1"
      access_key = "access_key"
      secret_key = "secret_key"
      }
   resource "aws_instance" "MyEC2-a" {
      ami                    = "ami-01376101673c89611"
      instance_type          = "t2.micro"
      key_name               = "Akshat"
      vpc_security_group_ids = ["sg-0e027ee91f616c98d"]
      availability_zone      = "ap-south-1a" 
      
      root_block_device {
      volume_size = 8
      }

      tags = {
      Name = "Master"
      }
    }   
    resource "aws_instance" "MyEC2-b" {
      ami                    = "ami-01376101673c89611"
      instance_type          = "t2.micro"
      key_name               = "Akshat"
      vpc_security_group_ids = ["sg-0e027ee91f616c98d"]
      availability_zone      = "ap-south-1b"

      root_block_device {
      volume_size = 8
      }

      tags = {
      Name = "Node-1"
      }
   }
   resource "aws_instance" "MyEC2-c" {
     ami                    = "ami-01376101673c89611"
     instance_type          = "t2.micro"
     key_name               = "Akshat"
     vpc_security_group_ids = ["sg-0e027ee91f616c98d"]
     availability_zone      = "ap-south-1a"

     root_block_device {
     volume_size = 8
     }

     tags = {
     Name = "Node-2"
     }
  }
