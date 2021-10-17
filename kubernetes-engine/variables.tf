variable "project" {
  type        = string
  description = "GCP Project ID"
  default     = ""
}
variable "service_account" {
  type        = string
  description = "GCP Service Account"
  default     = "jenkins-sa"
}

variable "cluster_name" {
  description = "GKE Cluster Name"
  type        = string
  default     = ""
}

variable "description" {
  type        = string
  description = "Cluster Description"
  default     = "GKE Cluster"
}


variable "oauth_scopes" {
  type        = list(string)
  description = "List of OAuth Scopes"
  default = [
    "https://www.googleapis.com/auth/cloud-platform"
  ]
}

variable "initial_node_count" {
  type        = string
  description = "GKE Initial Node Count"
  default     = "1"
}

variable "min_master_version" {
  type        = string
  description = "GKE Min. Master version"
  default     = "1.19"
}

variable "node_count" {
  type        = string
  description = "GKE Node Pool Count"
  default     = "1"
}

variable "nodepool_name" {
  type        = string
  description = "GKE Node Pool Name"
  default     = "default"
}

variable "nodepool_machine_type" {
  type        = string
  description = "Node Pool Machine Type"
  default     = "e2-medium"
}

variable "is_node_preemptibile" {
  type        = bool
  description = "GKE Worker Node Preemptible"
  default     = "false"
}


variable "location" {
  description = "GCP Location"
  type        = string
  default     = "asia-east1-c"
}