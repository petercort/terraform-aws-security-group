locals {
  source_security_groups = toset(concat(
    [for val in var.ingress_rules : val.security_group_name], 
    [for val in var.egress_rules : val.security_group_name]
  ))
}

data "aws_security_group" "security_group" {
  for_each  = local.source_security_groups
  name      = each.value
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

  tags        = {
    Name      = var.name
  }
}

resource "aws_security_group_rule" "create_sg_ingress_rules" {
  for_each = { for index, ingress_rule in var.ingress_rules: ingress_rule.description => ingress_rule }
  security_group_id         = aws_security_group.create_security_groups.id
  type                      = "ingress"
  description               = each.value.description
  from_port                 = each.value.from_port
  to_port                   = each.value.to_port
  protocol                  = each.value.protocol
  source_security_group_id  = data.aws_security_group.security_group[each.value.security_group_name].id
}

resource "aws_security_group_rule" "create_sg_egress_rules" {
  for_each                  = { for index, egress_rule in var.egress_rules: egress_rule.description => egress_rule }
  security_group_id         = aws_security_group.create_security_groups.id
  type                      = "egress"
  description               = each.value.description
  from_port                 = each.value.from_port
  to_port                   = each.value.to_port
  protocol                  = each.value.protocol
  source_security_group_id  = data.aws_security_group.security_group[each.value.security_group_name].id
}