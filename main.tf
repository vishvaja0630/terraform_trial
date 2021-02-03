resource "docker_container" "tomcat" {
  image = "tomcat:latest"
  name  = "tomcat"
  restart = "always"
  ports {
    internal = 8080
    external = 9090
  }
}
