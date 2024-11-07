vm_name               = "my-instance"
machine_type          = "n1-standard-1"
zone                  = "us-central1-a"
project_id            = "<project_id>"
image                 = "projects/debian-cloud/global/images/family/debian-11"
network               = "default"
tags                  = ["web", "production"]
startup_script        = "echo 'Hello, World!' > /var/www/html/index.html"
service_account_email = "<SA_ID>"
scopes                = ["https://www.googleapis.com/auth/cloud-platform"]
labels = {
  environment = "production"
  app         = "web-server"
}
