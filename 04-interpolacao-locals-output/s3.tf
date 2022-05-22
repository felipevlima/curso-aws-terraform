resource "aws_s3_bucket" "this" {
  bucket = "${random_pet.bucket.id}-${var.environment}"

  tags = local.common_tags
}

resource "aws_s3_bucket" "manual" {
  bucket = "evenly-strictly-normally-up-unicorn-dev"
}


resource "aws_s3_bucket_object" "this" {
  bucket = aws_s3_bucket.this.bucket
  key    = "config/${local.ip_file}"
  source = local.ip_file
  etag   = filemd5(local.ip_file)
}
