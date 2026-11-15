 provider "aws" {
  region = "eu-north-1"
}
/*
module "vpc" {
  source             = "./modules/vpc" # Percorso flat semplificato
  vpc_cidr           = "10.0.0.0/16"
  public_subnet_cidr = "10.0.1.0/24"
  az                 = var.availability_zone
  env                = var.env
}



module "ec2" {
  source    = "./modules/ec2"
  subnet_id = module.vpc.subnet_id
  sg_id     = module.security_group.sg_id
  # sg_id     = var.existing_sg_id 
  env       = var.env
} */
/* module "s3_import" {
  source      = "./modules/s3_import"
  bucket_name = var.imported_bucket_name
} */

module "security_group" {
  source        = "./modules/security_group"
  vpc_id        = "vpc-0666794ad6e434291"
  env           = var.env
  ingress_ports = var.ingress_ports
}