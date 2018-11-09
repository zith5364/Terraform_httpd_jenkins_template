resource "docker_container" "container_id" {
  name = "${var.container_name}"
  image = "${var.image_name}"
  ports {
    internal = "${var.i_port}"
    external = "${var.e_port}"
  }
}
  
