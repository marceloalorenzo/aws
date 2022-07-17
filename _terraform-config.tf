terraform {
  backend "s3" {
    bucket         = "terraform-bucket.state"
    key            = "terraform-key.tfstate"
    dynamodb_table = "TerraformLock"
    region         = "us-east-2"
    profile        = "prod"
  }
}

provider "aws" {
  region  = var.region
  profile = var.env_short

}