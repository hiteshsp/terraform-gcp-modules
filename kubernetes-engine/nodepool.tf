resource "google_container_node_pool" "this" {
  name       = var.nodepool_name
  location   = var.location
  cluster    = google_container_cluster.this.name
  node_count = var.node_count

  node_config {
    preemptible  = var.is_node_preemptibile
    machine_type = var.nodepool_machine_type

    # Google recommends custom service accounts that have cloud-platform scope and permissions granted via IAM Roles.
    service_account = data.google_service_account.default.email
    oauth_scopes    = var.oauth_scopes
  }
}