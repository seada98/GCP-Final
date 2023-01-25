resource "google_compute_network" "seada-vpc" {
  name                    = "seada-vpc"
  project     = "iti-seada"
  auto_create_subnetworks = false
  routing_mode            = "REGIONAL"
}