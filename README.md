# Terraform Kubernetes Certificate ClusterIssuer

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kubernetes_manifest.clusterissuer](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/manifest) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_cloudflare_token_key"></a> [cloudflare\_token\_key](#input\_cloudflare\_token\_key) | The key withing the cloudflare\_token\_name containing the secret | `string` | `"cloudflare-token"` | no |
| <a name="input_cloudflare_token_name"></a> [cloudflare\_token\_name](#input\_cloudflare\_token\_name) | The name of the secret containing the cloudflare token | `string` | n/a | yes |
| <a name="input_cluster_configfile"></a> [cluster\_configfile](#input\_cluster\_configfile) | The path to the cluster config file | `string` | `"~/.kube/config"` | no |
| <a name="input_cluster_context"></a> [cluster\_context](#input\_cluster\_context) | The cluster context | `any` | n/a | yes |
| <a name="input_domain"></a> [domain](#input\_domain) | The domain name for the issuer | `any` | n/a | yes |
| <a name="input_issuer_email"></a> [issuer\_email](#input\_issuer\_email) | The email address for the issuer | `any` | n/a | yes |
| <a name="input_type"></a> [type](#input\_type) | The ACME server type (staging or production) | `string` | `"staging"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->