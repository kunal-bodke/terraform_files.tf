terraform {
required_providers {
	aws = {
	source = "hashicorp/aws"
	version = "~> 4.0"
}
}
}
provider "aws" {
	region = "us-east-1"
}

locals {
	instances = {"Docker":"ami-0b5eea76982371e91","Ansible":"ami-0b5eea76982371e91","Terraform":"ami-0574da719dca65348"}
}

resource "aws_instance" "ec2_1" {
	for_each = local.instances
	ami = each.value
	instance_type = "t2.micro"
	tags = {
		Name = each.key
}
}
