resource "random_password" "password" {
  length    = 16
  special   = true
}

resource "docker_image" "mysql" {
  name         = "mysql:latest"
  keep_locally = true
}

resource "docker_container" "mysql" {
  image = docker_image.mysql.latest
  name  = "mysql"
  env   = ["MYSQL_DATABASE=${var.DB_NAME}","MYSQL_ROOT_PASSWORD=${random_password.password.result}"]
}