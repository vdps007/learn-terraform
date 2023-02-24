resource "aws_instance" "ec2" {
    ami = "ami-0a017d8ceb274537d"
    instance_type = "t2.micro"
    vpc_security_group_ids = ["sg-08e7fba48c1aa9cc4"]
    tags = {
        Name = "test"
    }
}