/*variable "security_group" {
  type = map(object({
    auto_groups                                              = optional(map(string), null)
    computed_egress_rules                                    = optional(list(string), [])
    computed_egress_with_cidr_blocks                         = optional(map(string), {})
    computed_egress_with_ipv6_cidr_blocks                    = optional(map(string), {})
    computed_egress_with_self                                = optional(map(string), {})
    computed_egress_with_source_security_group_id            = optional(map(string), {})
    computed_ingress_rules                                   = optional(list(string), [])
    computed_ingress_with_cidr_blocks                        = optional(map(string), {})
    computed_ingress_with_ipv6_cidr_blocks                   = optional(map(string), {})
    computed_ingress_with_self                               = optional(map(string), {})
    computed_ingress_with_source_security_group_id           = optional(map(string), {})
    create                                                   = optional(bool, true)
    create_sg                                                = optional(bool, true)
    create_timeout                                           = optional(string, "10m")
    delete_timeout                                           = optional(string, "15m")
    description                                              = optional(string, "Security Group managed by Terraform")
    egress_cidr_blocks                                       = optional(list(string), ["0.0.0.0/0"])
    egress_ipv6_cidr_blocks                                  = optional(list(string), ["::/0"])
    egress_prefix_list_ids                                   = optional(list(string), [])
    egress_rules                                             = optional(list(string), []) 
    egress_with_cidr_blocks                                  = optional(map(string), {})
    egress_with_ipv6_cidr_blocks                             = optional(map(string), {})
    egress_with_self                                         = optional(map(string), {})
    egress_with_source_security_group_id                     = optional(map(string), {})
    ingress_cidr_blocks                                      = optional(list(string), [])
    ingress_ipv6_cidr_blocks                                 = optional(list(string), [])
    ingress_prefix_list_ids                                  = optional(list(string), [])
    ingress_rules                                            = optional(list(string), [])
    ingress_with_cidr_blocks                                 = optional(map(string), {})
    ingress_with_ipv6_cidr_blocks                            = optional(map(string), {})
    ingress_with_self                                        = optional(map(string), {})
    ingress_with_source_security_group_id                    = optional(map(string), {})
    name                                                     = optional(list(string), [])
    number_of_computed_egress_rules                          = optional(number, 0)
    number_of_computed_egress_with_cidr_blocks               = optional(number, 0)
    number_of_computed_egress_with_ipv6_cidr_blocks          = optional(number, 0)
    number_of_computed_egress_with_self                      = optional(number, 0)
    number_of_computed_egress_with_source_security_group_id  = optional(number, 0)
    number_of_computed_ingress_rules                         = optional(number, 0)
    number_of_computed_ingress_with_cidr_blocks              = optional(number, 0)
    number_of_computed_ingress_with_ipv6_cidr_blocks         = optional(number, 0)
    number_of_computed_ingress_with_self                     = optional(number, 0)
    number_of_computed_ingress_with_source_security_group_id = optional(number, 0)
    revoke_rules_on_delete                                   = optional(bool, false)
    rules                                                    = optional(map(list(any)), {})
    security_group_id                                        = optional(string, null)
    tags                                                     = optional(map(string), null)
    use_name_prefix                                          = optional(bool, true)
    vpc_name                                                 = optional(string, null)
  }))
  default = {}
}*/

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
      description = string
      from_port = string
      to_port = string
      protocol = string
      security_group_name = string
      }))
  default = []
}
variable "egress_rules" {
  type = list(object({
      description = string
      from_port = string
      to_port = string
      protocol = string
      security_group_name = string
      }))
  default = []
}