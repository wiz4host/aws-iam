
resource "aws_iam_policy" "iamprofile001" {
  name = "iamprofile001"

  policy = <<EOF
              {
                "Version": "2012-10-17",
                "Statement": [
                      {
                          "Action": "ec2:*",
                          "Effect": "Allow",
                          "Resource": "*"
                      },
                      {
                            "Effect": "Allow",
                            "Action": [
                               "ec2:DescribeInstances",
                               "cloudwatch:DescribeAlarms",
                               "cloudwatch:GetMetricStatistics"
                              ],
                            "Resource": "*"
                      },
                      {
                            "Action": [
                                "s3:ListAllMyBuckets",
                                "s3:ListBucket",
                                "s3:ListBucketVersions"
                              ],
                            "Effect": "Allow",
                            "Resource": "arn:aws:s3:::mybucketname",
                      }
                ]
              }
            EOF
}