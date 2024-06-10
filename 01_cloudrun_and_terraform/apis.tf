# Active Google Cloud Run API
resource "google_project_service" "run_api" {
  project            = local.project_id
  service            = "run.googleapis.com"
  disable_on_destroy = false
}
