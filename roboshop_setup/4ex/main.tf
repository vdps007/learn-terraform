module "ec2" {
  for_each          = var.instaces
  source            = "./ec2"
  component         = each.value["name"]
  instance_type     = each.value["type"]
  sg_id             = module.sg.sg_id
}

module "sg_id" {
    source            = "./sg"
}

module "route53" {
    for_each = var.instaces
    source = "./route53"
    component = each.value["name"]
    private_ip = module.ec2[each.value["name"]].private_ip
}
output "ec2" {
  value = module.ec2
}