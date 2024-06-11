terraform {
  required_providers {
    google = {
      version = "~> 5.32.0"
    }
  }
}

provider "google" {
  project = local.project_id
}
