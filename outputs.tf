output "customer_reports_bucket" {
  value = aws_s3_bucket.customer_reports.bucket
}

output "report_exporter_access_key_id" {
  value = aws_iam_access_key.report_exporter.id
}

output "report_exporter_secret_access_key" {
  value = aws_iam_access_key.report_exporter.secret
}
