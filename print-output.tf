# outputs for arn
output "user_name" {
  value = aws_iam_user.createuser.name
}

output "user_arn" {
  value = aws_iam_user.createuser.arn
}

output "policy_arn" {
  value = aws_iam_policy.iamprofile001.arn
}

output "policy_name" {
  value = aws_iam_policy.iamprofile001.name
}