output "bucket_name" {
  value = aws_s3_bucket.this.bucket
}

output "bucket_arn" {
  value = aws_s3_bucket.this.arn
  description = "value"
}

output "bucket_domain_name" {
  value = aws_s3_bucket.this.bucket_domain_name
  description = ""
}

output "bucket_key" {
  value = "${aws_s3_bucket.this.bucket}/${aws_s3_object.this.key}"
  description = ""
}