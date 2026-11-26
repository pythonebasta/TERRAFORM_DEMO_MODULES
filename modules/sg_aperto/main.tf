resource "aws_security_group" "ec2_sg" {
  name        = "${var.env}-ec2-sg"
  description = "Security Group con porta 22 aperta per test Checkov"
  vpc_id      = "vpc-0666794ad6e434291"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "SSH aperto a tutti"
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Traffico in uscita consentito"
  }

  tags = {
    Name = "${var.env}-sg"
  }
}

output "sg_id" {
  value = aws_security_group.ec2_sg.id
}
