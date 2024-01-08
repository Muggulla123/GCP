# variables.tf

variable "dataset_id" {
  description = "The ID of the BigQuery dataset"
  type        = string
}

variable "friendly_name" {
  description = "The friendly name of the BigQuery dataset"
  type        = string
}

variable "description" {
  description = "The description of the BigQuery dataset"
  type        = string
}

variable "location" {
  description = "The location of the BigQuery dataset"
  type        = string
}

variable "expiration_ms" {
  description = "The default table expiration time in milliseconds for the BigQuery dataset"
  type        = number
}

variable "owner_email" {
  description = "The email address of the owner for access control"
  type        = string
}

variable "crypto_key_name" {
  description = "The name of the Cloud KMS CryptoKey for encryption"
  type        = string
}

variable "key_ring_name" {
  description = "The name of the Cloud KMS KeyRing for encryption"
  type        = string
}

variable "key_ring_location" {
  description = "The location of the Cloud KMS KeyRing for encryption"
  type        = string
}

variable "table_id" {
  description = "The ID of the BigQuery table"
  type        = string
}

variable "partitioning_type" {
  description = "The type of time partitioning for the BigQuery table"
  type        = string
}

variable "schema" {
  description = "The schema of the BigQuery table"
  type        = string
}
