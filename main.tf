locals {
  letsencrypt_server = var.type == "staging" ? "https://acme-staging-v02.api.letsencrypt.org/directory" : "https://acme-v02.api.letsencrypt.org/directory"
}

resource "kubernetes_manifest" "clusterissuer" {
  manifest = {
    "apiVersion" = "cert-manager.io/v1"
    "kind"       = "ClusterIssuer"
    "metadata" = {
      "name" = "letsencrypt-${replace(var.domain, ".", "-")}-${var.type}"
    }
    "spec" = {
      "acme" = {
        "email" = var.issuer_email
        "privateKeySecretRef" = {
          "name" = "letsencrypt-${replace(var.domain, ".", "-")}-${var.type}"
        }
        "server" = local.letsencrypt_server
        "solvers" = [
          {
            "dns01" = {
              "cloudflare" = {
                "apiKeySecretRef" = {
                  "name" = var.cloudflare_token_name
                  "key"  = var.cloudflare_token_key
                }
                "email" = var.issuer_email
              }
            }
            "selector" = {
              "dnsZones" = [
                var.domain,
              ]
            }
          },
        ]
      }
    }
  }
}