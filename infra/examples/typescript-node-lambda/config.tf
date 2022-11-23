terraform {
  required_version = ">= 1.2.0"

  backend "s3" {
    region = "eu-west-2"
    bucket = "typescript-node-aws-template-s3-state"
    key    = "typescript-node-aws-template.tfstate"
  }
}
