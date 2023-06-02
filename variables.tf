variable "name" {
  type = string
}

variable "description" {
  type = string
}
variable "vpc_name" {
  type = string
}
variable "ingress_rules" {
  type = list(object({
    description         = string
    from_port           = string
    to_port             = string
    protocol            = string
    security_group_name = string
  }))
  default = []
}
variable "egress_rules" {
  type = list(object({
    description         = string
    from_port           = string
    to_port             = string
    protocol            = string
    security_group_name = string
  }))
  default = []
}