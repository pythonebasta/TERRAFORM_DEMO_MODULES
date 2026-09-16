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
  
}
