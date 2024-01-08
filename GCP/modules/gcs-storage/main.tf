# tf/modules/gcs-storage/main.tf

resource "google_storage_bucket" "test" {
  name          = var.bucket_name
  location      = var.bucket_location
  force_destroy = var.bucket_force_destroy
  storage_class = var.bucket_storage_class

  versioning {
    enabled = var.bucket_versioning_enabled
  }

  dynamic "lifecycle_rule" {
    for_each = var.bucket_lifecycle_rules

    content {
      condition {
        age = lifecycle_rule.value.age
      }
      action {
        type = lifecycle_rule.value.type
      }
    }
  }
}
