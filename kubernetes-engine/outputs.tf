output "cluster_name" {
  description = "GKE Cluster Name"
  value       = google_container_cluster.this.name
}