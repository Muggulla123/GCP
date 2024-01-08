# tf/modules/compute-instance/output.tf

output "instance_name" {
  description = "The name of the created VM instance"
  value       = google_compute_instance.vm_instance.name
}

output "instance_network_interface" {
  description = "The network interface of the created VM instance"
  value       = google_compute_instance.vm_instance.network_interface[0]
}

output "instance_metadata_startup_script" {
  description = "The startup script of the created VM instance"
  value       = google_compute_instance.vm_instance.metadata_startup_script
}
