variable "test" {
  default = {
    "catalogue" = {
        "private_ip" = "172.31.3.189"
    }
    "user" = {
        "private_ip" = "172.31.3.23"
    }
  }
}

output "test" {
  value = var.test["catalogue"].private_ip
  //value = var.test[each.value["name"]].private_ip
}