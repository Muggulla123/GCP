provider "google" {
  credentials = file("./virtual-crane-409504-80caea647820.json")
  project = "virtual-crane-409504"
  region  = "us-central1"
  zone    = "us-central1-a"
}