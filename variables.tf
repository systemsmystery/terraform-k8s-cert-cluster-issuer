variable "type" {
  description = "The ACME server type (staging or production)"
  default     = "staging"
}

variable "domain" {
  description = "The domain name for the issuer"
}

variable "issuer_email" {
  description = "The email address for the issuer"
}

variable "cluster_configfile" {
  description = "The path to the cluster config file"
  default     = "~/.kube/config"
}

variable "cluster_context" {
  description = "The cluster context"
}

variable "cloudflare_token_key" {
  description = "The key withing the cloudflare_token_name containing the secret"
  default     = "cloudflare-token"
  type        = string
}

variable "cloudflare_token_name" {
  description = "The name of the secret containing the cloudflare token"
  type        = string
}
