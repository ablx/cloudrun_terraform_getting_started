# This file contains the output configuration for the Cloud Run service
output "cloudrun_url" {
  value       = google_cloud_run_v2_service.service.uri
  description = "The URL of the Cloud Run service"
}
 