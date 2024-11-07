module "vm_instance" {
  source = "./modules/vm-instance"

  vm_name               = "my-vm-instance"
  machine_type          = "n1-standard-1"
  zone                  = "us-central1-a"
  project_id            = "<Project_id>"
  image                 = "projects/debian-cloud/global/images/family/debian-11"
  network               = "default"
  tags                  = ["web", "production"]
  startup_script        = "echo 'Hello, World!' > /var/www/html/index.html"
  service_account_email = "<Enter SA>"
  scopes                = ["https://www.googleapis.com/auth/cloud-platform"]
  labels = {
    environment = "production"
    app         = "web-server"
  }
}

module "test_instance" {
  source = "./modules/vm-instance"

  vm_name               = "my-module-instance"
  machine_type          = "n1-standard-1"
  zone                  = "us-central1-b"
  project_id            = "<Project_id>"
  image                 = "projects/debian-cloud/global/images/family/debian-11"
  network               = "default"
  tags                  = ["web", "production"]
  startup_script        = "echo 'Hello, World!' > /var/www/html/index.html"
  service_account_email = "<Enter SA>"
  scopes                = ["https://www.googleapis.com/auth/cloud-platform"]
  labels = {
    environment = "production"
    app         = "web-server"
  }
}
