data "aws_ami" "ami" {
    most_recent = true
    name_regex = "Centos-8-DevOps-Practice"
    owners = ["973714476881"]
}

resource "aws_instance" "instaces" {
    for_each = var.instaces
    ami = data.aws_ami.ami.image_id
    instance_type = each.value["type"]
    vpc_security_group_ids = ["sg-08e7fba48c1aa9cc4"]
    tags = {
      "name" = each.value["name"]
    }
}

variable "instaces" {
  default = {
    catalogue = {
        name = "catalogue"
        type = "t2.micro"
    }
    user = {
        name = "user"
        type = "t2.micro"
    }
    }
}

output "ec2" {
  value = [for k,v in aws_instance.instaces : "${k} - ${v.public_ip}"]
}