module "ec2" {
  source            = "./ec2"
  component         = each.value["name"]
  instance_type     = each.value["type"]
  sg_id             = module.sg.sg_id
}

module "sg_id" {
    source            = "./sg"
}

variable "instances" {
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
