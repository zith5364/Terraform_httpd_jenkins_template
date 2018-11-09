module "image" {
  source = "./image"
  image_name = "${lookup(var.image_name, var.env)}"
}
 module "container" {
   source = "./container"
   container_name = "${lookup(var.container_name, var.env)}"
   image_name = "${module.image.image_out}"
   i_port = "${lookup(var.i_port, var.env)}"
   e_port = "${lookup(var.e_port, var.env)}"
}

resource "null_resource" "null_id" {
  provisioner "local-exec" {
    command = "echo ${module.image.image_out}:${module.container.ip} >> output.txt"
  }
}
