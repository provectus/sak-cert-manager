# Cert-manager

## How it use

```
module "cert-manager" {
  depends_on   = [module.argocd]

  source       = "github.com/provectus/sak-cert-manager"
  cluster_name = module.kubernetes.cluster_name
  argocd       = module.argocd.state
  email        = "dkharlamov@provectus.com"
  zone_id      = data.aws_route53_zone.this.zone_id
  vpc_id       = module.network.vpc_id
  domains      = local.domain
}
```