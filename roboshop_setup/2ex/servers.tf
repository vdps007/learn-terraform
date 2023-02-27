data "aws_ami" "ami" {
    most_recent = true
    name_regex = "Centos-8-DevOps-Practice"
    owners = ["973714476881"]
}

resource "aws_instance" "frontend" {
    count = length(var.instaces)
    ami = data.aws_ami.ami.image_id
    instance_type = "t3.micro"
    vpc_security_group_ids = ["sg-08e7fba48c1aa9cc4"]

}

variable "instaces" {
  default = ["cart", "catalogue", "user", "payments", "shipping"]
}

resource "aws_route53_record" "frontend" {
    zone_id = "Z0951825YO9TU21VYS1Z"  
    name = "frontend-dev.itsmevdps.online"
    type = "A"
    ttl = 30
    records = [aws_instance.frontend.private_ip]
}