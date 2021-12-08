variable "cluster_name" {
  type    = string
  default = ""
  description = "Name of the cluster"
}

variable "domains" {
  type    = list(string)
  default = []
  description = "domains"
}

variable "email" {
  type    = string
  default = ""
  description = "email"
}

variable "environment" {
  type    = string
  default = ""
  description = "environment"
}

variable "module_depends_on" {
  type    = list(any)
  default = []
  description = "dependencies"
}

variable "namespace" {
  type    = string
  default = "cert-manager"
  description = "namespace"
}

variable "project" {
  type    = string
  default = ""
  description = "project"
}

variable "vpc_id" {
  type = string
  description = "vpc id"
}

variable "zone_id" {
  type = string
  description = "zone id"
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
