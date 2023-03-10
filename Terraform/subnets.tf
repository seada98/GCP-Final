resource "google_compute_subnetwork" "management_subnet" {
  name          = "management-subnet"
  ip_cidr_range = "10.0.1.0/24"
  region        = "us-central1"
  network       = google_compute_network.seada-vpc.id
}

resource "google_compute_subnetwork" "restricted_subnet" {
  name          = "restricted-subnet"
  ip_cidr_range = "10.0.2.0/24"
  region        = "us-central1"
  network       = google_compute_network.seada-vpc.id

  private_ip_google_access = true
  secondary_ip_range {
    range_name    = "k8s-pod-range"
    ip_cidr_range = "10.0.3.0/24"
  }
  secondary_ip_range {
    range_name    = "k8s-service-range"
    ip_cidr_range = "10.0.4.0/24"
  }

}