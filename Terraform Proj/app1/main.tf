
module "ec2" {
  source                  = "../modules/ec2"
  image                   = var.ami
  subnet_assigned         = module.vpc.public_subnet_id
  security_group_assigned = module.vpc.created_sec_group
  instance_name           = join("-", [var.ec2_name, var.region])
}

module "s3" {
  source      = "../modules/s3"
  bucket_name = var.s3-bucket
}

module "dynamodb" {
  source     = "../modules/dynamo_db"
  table_name = join("-", [var.table, var.region])
}

module "vpc" {
  source          = "../modules/networks"
  subnet_region_a = var.subnet_region_a
  subnet_region_b = var.subnet_region_b
}
