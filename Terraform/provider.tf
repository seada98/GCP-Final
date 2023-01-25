provider "google" {
  project     = "iti-seada"
  region      = "us-central1"
  credentials = file("iti-seada-94492f23ec2b.json")
}