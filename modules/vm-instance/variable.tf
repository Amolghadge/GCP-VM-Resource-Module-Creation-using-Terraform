variable "vm_name" {
  description = "The name of the VM instance"
  type        = string
}

variable "machine_type" {
  description = "The machine type for the instance"
  type        = string
}

variable "zone" {
  description = "The zone in which the VM instance will be created"
  type        = string
}

variable "project_id" {
  description = "The project ID"
  type        = string
}

variable "image" {
  description = "The image to use for the VM"
  type        = string
}

variable "network" {
  description = "The network for the VM instance"
  type        = string
}

variable "tags" {
  description = "List of tags to assign to the instance"
  type        = list(string)
  default     = []
}

variable "startup_script" {
  description = "Startup script to run on instance creation"
  type        = string
  default     = ""
}

variable "service_account_email" {
  description = "The email of the service account to attach to the instance"
  type        = string
}

variable "scopes" {
  description = "The list of OAuth scopes to assign to the service account"
  type        = list(string)
}

variable "labels" {
  description = "Labels to apply to the instance"
  type        = map(string)
  default     = {}
}
