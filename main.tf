provider "aws" {
  region = "eu-north-1"
}

module "vpc" {
  source             = "./modules/vpc" # Percorso flat semplificato
  vpc_cidr           = "10.0.0.0/16"
  public_subnet_cidr = "10.0.1.0/24"
  az                 = var.availability_zone
  env                = var.env
}

module "security_group" {
  source        = "./modules/security_group"
  vpc_id        = module.vpc.vpc_id
  env           = var.env
  ingress_ports = var.ingress_ports
}

module "ec2" {
  source    = "./modules/ec2"
  subnet_id = module.vpc.subnet_id
  sg_id     = module.security_group.sg_id
  # sg_id     = var.existing_sg_id 
  env       = var.env
}
