resource "aws_s3_bucket" "imported_bucket" {
  bucket = var.bucket_name
}
