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

resource "aws_instance" "ubuntu_instance" {
	count = 3
	ami = "ami-0574da719dca65348"
	instance_type = "t2.micro"
	tags = {
		Name =  "Sample_Terraform"
}
}

output "instance_public_ips" {
	value = aws_instance.ubuntu_instance[*].public_ip
}
