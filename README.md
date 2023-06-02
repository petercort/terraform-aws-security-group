# terraform-aws-securitygroup



<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

No providers.

## Modules

|                             Name                                  |                   Source                | Version |
|-------------------------------------------------------------------|-----------------------------------------|---------|
| <a name="module_securitygroup"></a> [securitygroup](#module\_sns) | terraform-aws-modules/securitygroup/aws | 19.11.0 |

## Resources

No resources.

## Inputs

|      Name      | Description | Type | Default | Required |
|----------------|-------------|------|---------|:--------:|
| <a name="input__securitygroup"></a> [sns](#input\_securitygroup) | n/a | <pre>map(object({<br>   
    auto_groups                                              = optional(map(string), null)<br>
    computed_egress_rules                                    = optional(list(string), [])<br>
    computed_egress_with_cidr_blocks                         = optional(map(string), {})<br>
    computed_egress_with_ipv6_cidr_blocks                    = optional(map(string), {})<br>
    computed_egress_with_self                                = optional(map(string), {})<br>
    computed_egress_with_source_security_group_id            = optional(map(string), {})<br>
    computed_ingress_rules                                   = optional(list(string), [])<br>
    computed_ingress_with_cidr_blocks                        = optional(map(string), {})<br>
    computed_ingress_with_ipv6_cidr_blocks                   = optional(map(string), {})<br>
    computed_ingress_with_self                               = optional(map(string), {})<br>
    computed_ingress_with_source_security_group_id           = optional(map(string), {})<br>
    create                                                   = optional(bool, true)<br>
    create_sg                                                = optional(bool, true)<br>
    create_timeout                                           = optional(string, "10m")<br>
    delete_timeout                                           = optional(string, "15m")<br>
    description                                              = optional(string, "Security Group managed by Terraform")<br>
    egress_cidr_blocks                                       = optional(list(string), ["0.0.0.0/0"])<br>
    egress_ipv6_cidr_blocks                                  = optional(list(string), ["::/0"])<br>
    egress_prefix_list_ids                                   = optional(list(string), [])<br>
    egress_rules                                             = optional(list(string), [])<br>
    egress_with_cidr_blocks                                  = optional(map(string), {})<br>
    egress_with_ipv6_cidr_blocks                             = optional(map(string), {})<br>
    egress_with_self                                         = optional(map(string), {})<br>
    egress_with_source_security_group_id                     = optional(map(string), {})<br>
    ingress_cidr_blocks                                      = optional(list(string), [])<br>
    ingress_ipv6_cidr_blocks                                 = optional(list(string), [])<br>
    ingress_prefix_list_ids                                  = optional(list(string), [])<br>
    ingress_rules                                            = optional(list(string), [])<br>
    ingress_with_cidr_blocks                                 = optional(map(string), {})<br>
    ingress_with_ipv6_cidr_blocks                            = optional(map(string), {})<br>
    ingress_with_self                                        = optional(map(string), {})<br>
    ingress_with_source_security_group_id                    = optional(map(string), {})<br>
    name                                                     = optional(list(string), [])<br>
    number_of_computed_egress_rules                          = optional(number, 0)<br>
    number_of_computed_egress_with_cidr_blocks               = optional(number, 0)<br>
    number_of_computed_egress_with_ipv6_cidr_blocks          = optional(number, 0)<br>
    number_of_computed_egress_with_self                      = optional(number, 0)<br>
    number_of_computed_egress_with_source_security_group_id  = optional(number, 0)<br>
    number_of_computed_ingress_rules                         = optional(number, 0)<br>
    number_of_computed_ingress_with_cidr_blocks              = optional(number, 0)<br>
    number_of_computed_ingress_with_ipv6_cidr_blocks         = optional(number, 0)<br>
    number_of_computed_ingress_with_self                     = optional(number, 0)<br>
    number_of_computed_ingress_with_source_security_group_id = optional(number, 0)<br>
    revoke_rules_on_delete                                   = optional(bool, false)<br>
    rules                                                    = optional(map(list(any)), {})<br>
    security_group_id                                        = optional(string, null)<br>
    tags                                                     = optional(map(string), null)<br>
    use_name_prefix                                          = optional(bool, true)<br>
    vpc_id                                                   = optional(string, null)     }))</pre> | `{}` | no |

## Outputs

|                                        Name                                     | Description |
|---------------------------------------------------------------------------------|-------------|
| <a name="output_securitygroup_arn"></a> [eks\_arn](#output\_securitygroup\_arn) |     n/a     |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
