# Cert-manager

## How it use

```
module "cert-manager" {
  depends_on   = [module.argocd]

  source       = "github.com/provectus/sak-cert-manager"
  cluster_name = module.eks.cluster_id
  argocd       = module.argocd.state
  email        = "your@email.com"
  zone_id      = data.aws_route53_zone.this.zone_id
  vpc_id       = module.network.vpc_id
  domains      = local.domain
}
```