resource "aws_s3_bucket" "my_bucket" {
  bucket = var.bucket_name

  tags = {
    Name        = var.bucket_name
    Environment = "Dev"
  }
}


resource "aws_ecr_repository" "my_ecr" {
  name = var.repo_name
  image_tag_mutability = "MUTABLE"

  tags = {
    Name        = var.repo_name
    Environment = "Dev"
  }
}
