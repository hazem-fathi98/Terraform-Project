terraform {
  backend "s3" {
    bucket = "app2-buck1"
    key    = "state"
    region = "eu-west-1"
  }
}

provider "aws" {
  region = "eu-west-1"
}
