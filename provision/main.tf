# updated to support TF 0.12
# backward support for TF 0.11
variable "name" {}

resource "random_id" "random" {
  keepers = {
    uuid = "${uuid()}"
  }

  byte_length = 32
}

output "random" {
  value = "${random_id.random.hex}"
}

output "hello_world" {
  value = "Hello, ${var.name}"
}
