resource "google_container_cluster" "this" {
<<<<<<< HEAD
  name     = var.google_container_cluster_name
  location = var.location
  remove_default_node_pool = true
  initial_node_count       = var.initial_node_count
  min_master_version = var.min_master_version
  description = var.description
=======
  name                     = var.cluster_name
  location                 = var.location
  remove_default_node_pool = true
  initial_node_count       = var.initial_node_count
  min_master_version       = var.min_master_version
  description              = var.description
>>>>>>> 4d8da0a (Initial Commit)
}

