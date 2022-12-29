	resource "local_file" "devops" {
	filename = var.file_list[0]
	content = var.content_map["content1"]
}

	resource "local_file" "devops_2nd" {
	filename = var.file_list[1]
	content = var.content_map["content2"]
}

output "skoda_all_cars" {
value = var.skoda_all_cars
}

output "aws_server_information" {
value = var.aws_ec2_server
}

output "batch_students" {
value = var.no_of_students
}
