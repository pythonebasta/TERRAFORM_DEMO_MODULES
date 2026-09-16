variable "env" { type = string }
variable "availability_zone" { type = string }
variable "ingress_ports" {
  type = map(object({
    port = number
    desc = string
  }))
}
variable "existing_sg_id" {
  type        = string
  description = "L'ID del Security Group già presente su AWS"
}

