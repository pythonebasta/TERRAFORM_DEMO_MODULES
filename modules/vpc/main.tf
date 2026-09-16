resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr
  enable_dns_hostnames = true
  tags                 = { Name = "${var.env}-vpc" }
}

resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_subnet_cidr
  availability_zone = var.az
  tags                 = { Name = "${var.env}-public-subnet" }
}

output "vpc_id" { value = aws_vpc.main.id }
output "subnet_id" { value = aws_subnet.public.id }
