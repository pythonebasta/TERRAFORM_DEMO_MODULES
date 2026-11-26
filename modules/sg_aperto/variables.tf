variable "vpc_id" { type = string }
variable "env" { type = string }
variable "ingress_ports" {
  type = map(object({
    port = number
    desc = string
  }))
}
