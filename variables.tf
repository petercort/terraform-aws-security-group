variable "name" {
  type = string
  description = "Name of the security group to create"
}

variable "description" {
  type = string
  description = "Description of what the security group is doing."
}
variable "vpc_id" {
  type = string
  description = "ID of the VPC to attach the security group to."
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
  description = "List of rule objects."
}
