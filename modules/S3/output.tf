output "url_bucket" {
  description = "URL Of S3 Bucket"
  value = "s3://${aws_s3_bucket.GRP5_bucket.bucket}"
}

output "link_bucket" {
  description = "HTTP link to S3 Bucket"
  value = "http://${aws_s3_bucket.GRP5_bucket.bucket}.s3.amazonaws.com/"
}
