# network

## Usage

```hcl
module network {
    source = "git::https://github.com/openstack-terraform-modules/network.git"

    deployment = module.deployment.outputs

    public_network_name  = var.PUBLIC_NETWORK_NAME
    private_network_cidr = var.PRIVATE_NETWORK_CIDR
    
    
}
```