
module "ec2" {
  source          = "../modules/ec2"
  image           = var.ami
  subnet_assigned = module.vpc.public_subnet_id
}

module "s3" {
  source      = "../modules/s3"
  bucket_name = var.s3-bucket
}

module "dynamodb" {
  source     = "../modules/dynamo_db"
  table_name = var.table
}

module "vpc" {
  source          = "../modules/networks"
  subnet_region_a = var.subnet_region_a
  subnet_region_b = var.subnet_region_b
}
