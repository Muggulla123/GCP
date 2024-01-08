# variables.tf

variable "bucket_name" {
  description = "The name of the GCS bucket"
  type        = string
}

variable "bucket_location" {
  description = "The location of the GCS bucket"
  type        = string
}

variable "bucket_storage_class" {
  description = "The storage class of the GCS bucket"
  type        = string
}

variable "bucket_force_destroy" {
  description = "Indicates whether to force destroy the GCS bucket"
  type        = bool
}

variable "bucket_versioning_enabled" {
  description = "Indicates whether versioning is enabled for the GCS bucket"
  type        = bool
}

variable "bucket_lifecycle_rules" {
  description = "List of lifecycle rules for the GCS bucket"
  type        = list(object({
    age  = number
    type = string
  }))
}
