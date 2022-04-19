output "ring_server_ips" {
  value = aws_instance.ring_servers.*.public_ip
}