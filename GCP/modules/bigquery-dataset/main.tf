# tf/modules/bigquery-dataset/main.tf

resource "google_bigquery_dataset" "default" {
  dataset_id                  = var.dataset_id
  friendly_name               = var.friendly_name
  description                 = var.description
  location                    = var.location
  default_table_expiration_ms = var.expiration_ms

  access {
    role          = "OWNER"
    user_by_email = var.owner_email
  }

  default_encryption_configuration {
    kms_key_name = google_kms_crypto_key.crypto_key.id
  }

  labels = {
    env = "default"
  }
}

resource "google_kms_crypto_key" "crypto_key" {
  name     = var.crypto_key_name
  key_ring = var.key_ring_name
}

resource "google_kms_key_ring" "key_ring" {
  name     = var.key_ring_name
  location = var.key_ring_location
}

resource "google_bigquery_table" "default" {
  dataset_id = google_bigquery_dataset.default.dataset_id
  table_id   = var.table_id

  time_partitioning {
    type = var.partitioning_type
  }

  labels = {
    env = "default"
  }

  schema = var.schema
}
