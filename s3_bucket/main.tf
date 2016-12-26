provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "terraform_state_files" {
  bucket = "lindison_terraform_state"

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = false
  }
}
