resource "aws_instance" "web" {
  ami                    = "ami-09a544646a5c105b0" # Ubuntu Server per eu-north-1 (Stoccolma)
  instance_type          = "t3.micro"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.sg_id]

  tags = { Name = "${var.env}-ec2-instance" }
}
