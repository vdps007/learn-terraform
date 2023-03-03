module "ec2" {
  for_each      = var.instances
  source        = "./ec2"
  component     = each.value["name"]
  instance_type = each.value["type"]
  //password      = try(each.value["password"], null)
}

variable "instances" {
  default = {
    frontend = {
      name = "test_frontend"
      type = "t2.micro"
    }
  }
}