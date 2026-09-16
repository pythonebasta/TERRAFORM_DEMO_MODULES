env               = "prod"
availability_zone = "eu-north-1a"

ingress_ports = {
  ssh = {
    port = 22
    desc = "Accesso SSH"
  }
  http = {
    port = 80
    desc = "Web standard HTTP"
  }
  https = {
    port = 443
    desc = "Web sicuro HTTPS"
  }
  app = {
    port = 8080
    desc = "Porta applicazione custom"
  }
/*   nodejs = {
    port = 3000
    desc = "Nuova porta applicazione Node.js"
  } */
}

# existing_sg_id = "sg-077c46a8d6ebfd9ab" # <--- l'ID reale preso dalla console AWS
