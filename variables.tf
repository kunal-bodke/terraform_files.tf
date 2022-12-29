variable "filename" {
	default = "/home/ubuntu/terraform/terraform_variables/rapid.txt"
}

variable "content" {
	default = "has been launched in 2010"
}

variable "skoda_all_cars" {}

variable "content_map" {
type = map
default = {
"content1" = "this is turbo-engine 1.5"
"content2" = "this is normal-engine 1.5"
}
}

variable "file_list" {
type = list
default = ["/home/ubuntu/terraform/terraform_variables/new-slavia.txt","/home/ubuntu/terraform/terraform_variables/new-rapid.txt"]
}

variable "aws_ec2_server" {
type = object ({
	name = string
	instance = number
	keys = list(string)
	ami = string
})

default = {
	name = "linux_instance"
	instance = 4
	keys = ["key1.pem","key2.pem","key3.pem"]
	ami = "ubuntu-asdfg"
}
}
variable "no_of_students" {}
