provider "docker" {
  host = "npipe:////./pipe/docker_engine"
}

resource "docker_image" "my_app_image" {
  name = "myapp"
  build {
    context = "."
  }
}

resource "docker_container" "my_app_container" {
  image = docker_image.my_app_image.latest
  name  = "myapp"
  ports {
    internal = 8080
    external = 8080
  }
}
