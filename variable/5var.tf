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
    default = {
        string = "hello",
        number = 1000,
        boolean = true
    }  
}
