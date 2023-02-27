terraform {
    backend "s3" {
        bucket = "terraform-b71"
        key = "satate/terraform.tfstate"
        region = "us-east-1"
    }
}

resource "aws_instance" "ec2" {
  ami = "ami-0a017"
  instance_type = "t3.micro"
  vpc_security_group_ids = ["sg-0f"]
  tags = {
    name = "test"
  }
}