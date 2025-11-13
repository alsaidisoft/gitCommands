resource "aws_s3_bucket" "bucket" {
  bucket        = var.bucket_name
  tags          = var.tags
  force_destroy = true
}

data "aws_iam_policy_document" "bucket_policy" {
  statement {
    //arguments
    sid     = "DenyInsecureTransport"
    effect  = "Deny"
    actions = ["s3:*"]
    resources = [
      "${aws_s3_bucket.bucket.arn}/*",
      "${aws_s3_bucket.bucket.arn}"
    ]
    //principals
    principals {
      type        = "AWS"
      identifiers = ["*"]
    }
    //conditions
    condition {
      test     = "Bool"
      variable = "aws:SecureTransport"
      values   = ["false"]
    }
  }

}

resource "aws_s3_bucket_policy" "bucket_policy" {
  bucket = aws_s3_bucket.bucket.id
  policy = data.aws_iam_policy_document.bucket_policy.json
}

resource "aws_s3_bucket_server_side_encryption_configuration" "bucket_encryption" {
  // new resource name used
  bucket = aws_s3_bucket.bucket.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256" // Use S3 managed keys (SSE-S3)
    }
  }
}

resource "aws_s3_bucket_public_access_block" "bucket_public_access" {
    bucket = aws_s3_bucket.bucket.id
    
    block_public_acls = true
    block_public_policy = true
    ignore_public_acls = true
    restrict_public_buckets = true
} 