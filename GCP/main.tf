module "vm_instance" {
  source                = "./modules/compute-instance"
  instance_name         = "terraform-gcp-instance"
  machine_type          = "e2-micro"
  deletion_protection   = false
  image                 = "debian-cloud/debian-11"
  network               = "default"
  metadata_startup_script = "echo test > /test.txt"
}

# tf/main.tf

module "gcs_storage" {
  source = "./modules/gcs-storage"

  bucket_name              = "test-jan-2024"
  bucket_location          = "US"
  bucket_storage_class     = "STANDARD"
  bucket_force_destroy     = true
  bucket_versioning_enabled = true

  bucket_lifecycle_rules = [
    {
      age  = 3
      type = "Delete"
    },
    {
      age  = 1
      type = "AbortIncompleteMultipartUpload"
    },
  ]
}

# tf/main.tf

module "bigquery_dataset" {
  source               = "./modules/bigquery-dataset"
  dataset_id           = "terraform-gcp-test"
  friendly_name        = "test"
  description          = "This is a test description"
  location             = "US"
  expiration_ms        = 3600000
  owner_email          = "srinivasmuggulla6@gmail.com"
  crypto_key_name      = "test-key"
  key_ring_name        = "test-keyring"
  key_ring_location    = "us"
  table_id             = "bar"
  partitioning_type    = "DAY"
  schema               = <<EOF
[
  {
    "name": "permalink",
    "type": "STRING",
    "mode": "NULLABLE",
    "description": "The Permalink"
  },
  {
    "name": "state",
    "type": "STRING",
    "mode": "NULLABLE",
    "description": "State where the head office is located"
  }
]
EOF
}
