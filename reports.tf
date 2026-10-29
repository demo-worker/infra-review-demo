resource "aws_s3_bucket" "customer_reports" {
  bucket        = "${var.project}-${var.environment}-customer-reports"
  acl           = "public-read"
  force_destroy = true

  logging {
    target_bucket = aws_s3_bucket.access_logs.id
    target_prefix = "customer-reports/"
  }
}
