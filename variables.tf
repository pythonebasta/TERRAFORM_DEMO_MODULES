variable "env" { type = string }
variable "availability_zone" { type = string }
variable "ingress_ports" {
  type = map(object({
    port = number
    desc = string
  }))
}
