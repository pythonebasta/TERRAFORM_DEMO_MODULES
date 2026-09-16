# Interroga AWS per trovare l'ultima AMI ufficiale di Ubuntu Server
data "aws_ami" "ubuntu" {
  most_recent = true
  owners      = ["099720109477"] # ID Proprietario ufficiale di Canonical/Ubuntu

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd-gp3/ubuntu-noble-24.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

# Crea l'istanza EC2 usando l'ID trovato dinamicamente sopra
resource "aws_instance" "web" {
  ami                    = data.aws_ami.ubuntu.id # <--- ID Dinamico!
  instance_type          = "t3.micro"
  subnet_id              = var.subnet_id
  vpc_security_group_ids = [var.sg_id]

  tags = { Name = "${var.env}-ec2-instance" }
}
