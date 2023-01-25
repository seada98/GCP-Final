resource "google_service_account" "project-service-account" {
  account_id = "project-service-account"
  project = "iti-seada"
}

resource "google_project_iam_binding" "project-service-account-iam" {
  project = "iti-seada"
  role    = "roles/storage.admin"
  members = [
  "serviceAccount:${google_service_account.project-service-account.email}"
  ]
}
