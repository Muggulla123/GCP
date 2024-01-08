# tf/modules/bigquery/outputs.tf

output "dataset_id" {
  description = "The ID of the BigQuery dataset"
  value       = google_bigquery_dataset.default.dataset_id
}

output "dataset_reference" {
  description = "The reference to the BigQuery dataset"
  value       = google_bigquery_dataset.default.dataset_reference
}

output "table_id" {
  description = "The ID of the BigQuery table"
  value       = google_bigquery_table.default.table_id
}

output "table_reference" {
  description = "The reference to the BigQuery table"
  value       = google_bigquery_table.default.table_reference
}
