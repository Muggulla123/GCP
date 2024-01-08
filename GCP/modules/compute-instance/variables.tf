# variables.tf

variable "instance_name" {
  description = "The name of the VM instance"
  type        = string
}

variable "machine_type" {
  description = "The machine type for the VM instance"
  type        = string
}

variable "deletion_protection" {
  description = "Deletion protection for the VM instance"
  type        = bool
}

variable "image" {
  description = "The image for the VM instance"
  type        = string
}

variable "network" {
  description = "The network for the VM instance"
  type        = string
}

variable "metadata_startup_script" {
  description = "The startup script for the VM instance"
  type        = string
}
