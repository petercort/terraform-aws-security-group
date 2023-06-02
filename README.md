# terraform-aws-security-group

Usage: 

```
module "security_groups" {
  source      = "git::https://github.com/petercort/terraform-aws-security-group"
  name        = "Web-SG"
  description = "Security group for web servers."
  vpc_name    = "my-workload-vpc"
  ingress_rules = [
    {
      description         = "Allow 443",
      from_port           = "443",
      to_port             = "443",
      protocol            = "TCP",
      security_group_name = "igw-sg"
    },
    {
      description         = "Allow 8443",
      from_port           = "8443",
      to_port             = "8443",
      protocol            = "TCP",
      security_group_name = "igw-sg"
    }
  ]
  egress_rules = [
    {
      description         = "Allow App Traffic",
      from_port           = "8080",
      to_port             = "8080",
      protocol            = "TCP",
      security_group_name = "app_sg"
    }
  ]
}
```
This module is specifically designed to handle security group to security group based rules, where none of the security groups exist. 

The module will deploy the security groups, and then deploy the rules and attach them to the security group. 

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_security_group.create_security_groups](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group_rule.create_sg_egress_rules](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group_rule.create_sg_ingress_rules](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group_rule) | resource |
| [aws_security_group.security_group](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/security_group) | data source |
| [aws_vpcs.sg_vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/vpcs) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | n/a | `string` | n/a | yes |
| <a name="input_egress_rules"></a> [egress\_rules](#input\_egress\_rules) | n/a | <pre>list(object({<br>      description = string<br>      from_port = string<br>      to_port = string<br>      protocol = string<br>      security_group_name = string<br>      }))</pre> | `[]` | no |
| <a name="input_ingress_rules"></a> [ingress\_rules](#input\_ingress\_rules) | n/a | <pre>list(object({<br>      description = string<br>      from_port = string<br>      to_port = string<br>      protocol = string<br>      security_group_name = string<br>      }))</pre> | `[]` | no |
| <a name="input_name"></a> [name](#input\_name) | n/a | `string` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_security_group_id"></a> [security\_group\_id](#output\_security\_group\_id) | n/a |
<!-- END_TF_DOCS -->