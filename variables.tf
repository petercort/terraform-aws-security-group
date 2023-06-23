variable "name" {
  type = string
}

variable "description" {
  type = string
}
variable "vpc_id" {
  type = string
}

variable "rules" {
  type = list(object({
    rule_type           = string
    description         = string
    from_port           = string
    to_port             = string
    protocol            = string
    security_group_name = optional(string, "")
    ipv4_cidr_block     = optional(list(string), [])
    ipv6_cidr_block     = optional(list(string), [])
  }))
  default = []
}