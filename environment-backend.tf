variable "cicd_environment_name" {
  type = "string"
}

variable "cicd_application_name" {
  type = "string"
  description = "Name of the application. The name will be used in an S3 object key and must conform to S3 naming convention."
}

terraform {
  backend "s3" {
    bucket = "cicd-environ-tofu-state-prod-ab12cf"
    key = "${var.cicd_environment_name}/${var.cicd_application_name}/terraform.tfstate"
    region = "us-east-2"
    use_lockfile = true
  }
}
