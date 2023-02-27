variable "sample" {
    default = "Hello World"
}

output "sample" {
    value = "variable sample - ${var.sample}, variable sample3 -${var.sample3[3]} variable sample1 - ${var.sample1}, variable sample2 - ${var.sample2["number"]}"
}

variable "sample1"{
    default="hello sample1"
}

variable "sample3" {
    default = {
        "hello",
        1000,
        true,
        "world"
    }  

variable "sample2" {
    default = {
        string = "hello",
        number = 1000,
        boolean = true
    }  
}
