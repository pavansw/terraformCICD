provider "aws" {
region = var.myregion
access_key= var.myaccesskey
secret_key= var.mysecretkey

}

resource "aws_s3_bucket" "mybucket1" {
bucket = "pavan-training01-bucket3"
tags = {
Name = "trainerPavan"
Environment = "development"
}
}

resource "aws_s3_bucket_acl" "mybucket1ACL" {
acl = "private"
bucket = aws_s3_bucket.mybucket1.id
}


