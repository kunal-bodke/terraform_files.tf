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

resource "aws_instance" "aws_server" {
	count = 4
	ami = "ami-0574da719dca65348"
	instance_type = "t2.micro"
	tags = {
		Name = "terraform-${count.index}-server"
}
}
