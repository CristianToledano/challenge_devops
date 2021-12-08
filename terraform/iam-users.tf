resource "aws_iam_user" "admin" {
  name = "admin"
  path = "/system/"

  tags = {
    tag-key = "tag-value"
  }
}

resource "aws_iam_access_key" "admin" {
  user = aws_iam_user.admin.name
}

resource "aws_iam_user_policy" "admin_ro" {
  name = "admin_role"
  user = aws_iam_user.admin.name

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
          "eks:*"
        ],
          "Resource": "*"
        }
  ]
}
EOF
}

resource "aws_iam_user" "usuario-1" {
  name = "usuario-1"
  path = "/system/"

  tags = {
    tag-key = "tag-value"
  }
}

resource "aws_iam_access_key" "usuario-1" {
  user = aws_iam_user.usuario-1.name
}

resource "aws_iam_user_policy" "normal_user" {
  name = "normal_role"
  user = aws_iam_user.usuario-1.name

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Action": [
          "eks:*"
        ],
          "Resource": "*"
        }
  ]
}
EOF
}