variable "sample" {
    default = "Hello World"
}

output "sample" {
    value = "variable sample - ${var.sample}, variable sample1 - ${var.sample1}, Boolean Value of Map = ${var.sample2["boolean"]}"
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
