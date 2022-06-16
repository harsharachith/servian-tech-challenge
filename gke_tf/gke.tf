provider "google" {
  project = var.project_id
  region  = var.location
}

resource "google_container_cluster" "primary" {
  name                     = var.cluster_name
  location                 = var.location
  project                  = var.project_id
  subnetwork               = var.subnetwork
  initial_node_count       = 1
  remove_default_node_pool = true
}
