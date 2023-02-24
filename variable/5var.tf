variable "sample" {
    default = "Hello World"
}

output "sample" {
    value = "variable sample - ${var.sample}, variable sample1 - ${var.sample1}"
}

variable "sample1"{}