resource "aws_iam_user" "report_exporter" {
  name = "${var.project}-report-exporter"
}

resource "aws_iam_access_key" "report_exporter" {
  user = aws_iam_user.report_exporter.name
}

resource "aws_iam_user_policy" "report_exporter" {
  name = "report-exporter-access"
  user = aws_iam_user.report_exporter.name

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect   = "Allow"
        Action   = ["s3:*"]
        Resource = "*"
      }
    ]
  })
}
