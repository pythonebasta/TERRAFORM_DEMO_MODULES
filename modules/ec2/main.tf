resource "aws_instance" "web" {
  # AMI ufficiale Ubuntu Server per eu-north-1
  ami                    = "ami-070dd5465590a8de0" 
  instance_type          = "t3.micro"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.sg_id]

  tags = { Name = "${var.env}-ec2-instance" }
}