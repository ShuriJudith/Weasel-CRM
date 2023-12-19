resource "aws_s3_bucket" "weasel_bucket" {
  bucket = var.bucket
  acl    = "private"
}
