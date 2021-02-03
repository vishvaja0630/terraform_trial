terraform{
    required_providers {
    # We recommend pinning to the specific version of the Docker Provider you're using
    # since new versions are released frequently
    docker = {
      source  = "kreuzwerker/docker"
      version = "2.8.0"
    }
  }
 }

# Configure the docker provider
provider "docker" {
}

# Find the latest Ubuntu precise image.
resource "docker_image" "tomcat" {
  name = "tomcat:latest"
  build {
      path = "/Dockerfile"
   }
}


resource "docker_container" "tomcat" {
  image = "tomcat:latest"
  name  = "tomcat"
  restart = "always"
  ports {
    internal = 8080
    external = 9090
  }
}
