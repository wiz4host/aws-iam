
resource "aws_iam_user" "createuser" {
  name  = var.iamuser
}

resource "aws_iam_user_policy_attachment" "iamprofile001attach" {
    user       = aws_iam_user.createuser.name
    policy_arn = aws_iam_policy.iamprofile001.arn
}