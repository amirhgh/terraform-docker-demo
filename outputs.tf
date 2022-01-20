output "db_info" {
  value     = random_password.password.result
  sensitive = true
}

output "info" {
  value     = "image=${docker_container.mysql.image} id=${docker_container.mysql.id} name=${docker_container.mysql.name} address=${docker_container.mysql.network_data[0].ip_address} db_name=${var.DB_NAME}"
}