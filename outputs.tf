output "subnet_id" {
  description = "ID da subnet criada"

  value = aws_subnet.subnet.id
}

output "security_group_id" {
  description = "ID do security group criado"

  value = aws_security_group.srg.id
}
