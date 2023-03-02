resource "aws_route53_record" "record" {
    zone_id = "Z0951825YO9TU21VYS1Z"  
    name = "${var.component}-dev.itsmevdps.online"
    type = "A"
    ttl = 30
    records = [var.private_ip]
}

variable "private_ip" {}
variable "component" {}