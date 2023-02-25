variable "sample" {
    default = "Hello World"
}

output "sample" {
    value = "variable sample - ${var.sample}, variable sample1 - ${var.sample1}, variable sample2 - ${var.sample2["number"]}"
}

variable "sample1"{
    default="hello sample1"
}

variable "sample2" {
    default = [
        "hello",
        1000,
        true,
    ]  
}
