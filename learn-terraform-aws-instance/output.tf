output "instance_id" {
  description = "ID da instância EC2"
  value       = aws_instance.app_server.id
}

output "instance_public_ip" {
  description = "Endereço de Ip publico da instância"
  value       = aws_instance.app_server.public_ip
}

output "instance_type" {
  description = "Tipo da instância"
  value       = aws_instance.app_server.instance_type

}