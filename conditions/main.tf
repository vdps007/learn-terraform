resource "aws_instance" "test" {
    instance_type = var.instance_type == "" ? "t2.micro" : var.instance_type
}

variable "instance_type" {
  
}