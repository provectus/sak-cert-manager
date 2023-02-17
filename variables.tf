variable "cluster_name" {
  type        = string
  description = "Cluster name"
  default     = ""
}

variable "domains" {
  type        = list(string)
  description = "List of domains"
  default     = []
}

variable "email" {
  type        = string
  description = "Email address to be used"
  default     = ""
}

variable "environment" {
  type        = string
  description = "Environment name"
  default     = ""
}

variable "module_depends_on" {
  type        = list(any)
  description = "Module depends on the list provided"
  default     = []
}

variable "namespace" {
  type        = string
  description = "Namespace"
  default     = "cert-manager"
}

variable "project" {
  type        = string
  description = "Project name"
  default     = ""
}

variable "zone_id" {
  type        = string
  description = "Zone ID to be used"
}

variable "argocd" {
  type        = map(string)
  description = "A set of variables for enabling ArgoCD"
  default = {
    namespace  = ""
    path       = ""
    repository = ""
    branch     = ""
  }
}
