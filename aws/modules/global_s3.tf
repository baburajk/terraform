resource "aws_s3_bucket" "clouds3icz" {
  bucket = "clouds3icz"
  acl    = "private"

  	tags = {
		Name		    = "s3",
        environment     = var.environment,
        managed_by      = var.managed_by
        }
}
