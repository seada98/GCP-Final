resource "google_project_iam_custom_role" "my-custom-role" {
  role_id     = "myCustomRole"
  title       = "My Custom Role"
  description = "A description"
  permissions = ["resourcemanager.projects.get", "storage.buckets.get", "storage.buckets.list" , "storage.objects.get" , "storage.objects.list" , "container.deployments.get" , "container.deployments.create" , "container.deployments.list" , "container.services.list" , "container.services.get" , "container.services.create" , "container.clusters.list" , "container.clusters.getCredentials" , "container.clusters.get" , "container.pods.list" ,"container.nodes.list" , ]
}

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
resource "google_project_iam_binding" "project-service-account-iam2" {
  project = "iti-seada"
  role    = "projects/${google_service_account.project-service-account.project}/roles/${google_project_iam_custom_role.my-custom-role.role_id}"
  members = [
    "serviceAccount:${google_service_account.project-service-account.email}"
  ]
}
