output "security_group_id" {
  description = "All the IDs of the security groups created"
  value = aws_security_group.create_security_groups.id
}
