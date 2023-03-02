data "aws_caller_identity" "current" {}

output "data" {
    value = [data.aws_caller_identity.current.account_id]
}