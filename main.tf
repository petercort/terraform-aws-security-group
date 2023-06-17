locals {
  source_security_groups = toset(concat([for val in var.rules : val.security_group_name if val.security_group_name != ""]))
}
data "aws_security_group" "security_group" {
  for_each = local.source_security_groups
  name     = each.value
}

data "aws_vpcs" "sg_vpc" {
  filter {
    name   = "tag:Name"
    values = [var.vpc_name]
  }
}

resource "aws_security_group" "create_security_groups" {
  name        = var.name
  description = var.description
  vpc_id      = data.aws_vpcs.sg_vpc.ids.0

  tags = {
    Name = var.name
  }
}

resource "aws_security_group_rule" "create_sg_ingress_rules" {
  for_each                 = { for index, rule in var.rules : rule.description => rule }
  security_group_id        = aws_security_group.create_security_groups.id
  type                     = each.value.rule_type
  description              = each.value.description
  from_port                = each.value.from_port
  to_port                  = each.value.to_port
  protocol                 = each.value.protocol 
  cidr_blocks              = each.value.ipv4_cidr_block
  ipv6_cidr_blocks         = each.value.ipv6_cidr_block
  source_security_group_id = each.value.security_group_name != "" ? data.aws_security_group.security_group[each.value.security_group_name].id : null 
}