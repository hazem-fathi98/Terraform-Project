terraform {
  backend "s3" {
    bucket = "app1-buck1"
    key    = "state"
    region = "us-west-1"
  }
}

provider "aws" {
  region = "us-west-1"
}
