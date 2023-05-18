# Swiss Army Kube Cert-manager module

This module was created to deploy Certificate Manager within Swiss Army Kube cluster with ease and simplicity.
Check out main repo of Swiss Army Kube for more information about the project in general.

**[Swiss Army Kube](https://github.com/provectus/swiss-army-kube)**
|
**[Contributing Guide](https://github.com/provectus/swiss-army-kube/blob/master/CONTRIBUTING.md)**

## Example of how to use

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
