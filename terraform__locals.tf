locals {
    deployment = module.deployment.outputs

    domain_name = format("%s.%s",
        data.openstack_identity_auth_scope_v3.scope.project_name,
        var.DOMAIN_NAME
    )

    public_network_name = var.PUBLIC_NETWORK_NAME
    private_network_cidr = var.PRIVATE_NETWORK_CIDR

    private_subnet_name = format("%s-%s",
        var.PRIVATE_NETWORK_NAME,
        local.deployment.id
    )

    private_subnet_fqdn = format("%s.%s",
        local.private_subnet_name,
        local.domain_name
    )

    private_subnet_dhcp_enable = var.PRIVATE_SUBNET_DHCP_ENABLE

    private_subnet_dhcp_pool_start = cidrhost(
        local.private_network_cidr,
        var.PRIVATE_SUBNET_DHCP_POOL_START
    )
    private_subnet_dhcp_pool_end = cidrhost(
        local.private_network_cidr,
        var.PRIVATE_SUBNET_DHCP_POOL_END
    )

    private_network_name = format("%s-%s",
        var.PRIVATE_NETWORK_NAME,
        local.deployment.id
    )

    private_network_fqdn = format("%s.%s",
        local.private_network_name,
        local.domain_name
    )

    public_to_private_router_name = format("public-to-private-%s",
        local.deployment.id
    )

    public_to_private_router_fqdn = format("%s.%s",
        local.public_to_private_router_name,
        local.domain_name,
    )
}