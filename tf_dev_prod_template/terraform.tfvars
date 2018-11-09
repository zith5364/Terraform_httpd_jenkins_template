image_name = {
  dev = "httpd:latest"
  prod = "jenkins:latest"
}

container_name = {
  dev = "webserver"
  prod = "jenkinsserver"
}

i_port = {
  dev = "80"
  prod = "8080"
}

e_port = {
  dev = "80"
  prod = "80"
}
