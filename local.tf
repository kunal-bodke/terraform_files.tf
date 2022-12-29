
resource "local_file" skoda1 {
	filename = "/home/ubuntu/terraform/local_type/slavia"
	content = "slavia has been launched in 2022"
	file_permission = "0744"
}

resource "random_string" "rand-str" {
	length = 16
	special = true
	override_special = "!@#$%^&*()_+{}|<>?:"
}

output "rand-str" {
	value = random_string.rand-str[*].result
}
