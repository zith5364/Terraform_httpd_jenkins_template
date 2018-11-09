# Terraform_httpd_jenkins_template
It will create httpd docker container if you choose dev environment and it will create jenkins container if you choose prod environment

Things needed before run the terraform template:
1. install the terraform 
2. install docker.

inputs:
run #terraform apply by going inside tf_dev_prod_template directory.
it will prompt for environment
1. if you want httpd server, give input as dev
2. if you want jenkins server, give input as prod

how to access:
1. I wrote the modules such a way, docker containers will expose their ports to localhost.

httpd docker container internal port 80 exposed to localhost port 80. so you can access webserver ditectly from localhost.
http://localhost:80 or ele thorough your public IP

Jenkins docker container internal port 8080 exposed to localhost port 80. you can simply access by http://localhost:80 or else through public IP.
