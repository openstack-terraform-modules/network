locals {
    deployment = var.deployment

    domain_name = format("%s.%s",
        data.openstack_identity_auth_scope_v3.scope.project_name,
        var.domain_name
    )

    public_network_name = var.public_network_name
    private_network_cidr = var.private_network_cidr

    private_subnet_name = format("%s-%s",
        var.private_network_name,
        local.deployment.id
    )

    private_subnet_fqdn = format("%s.%s",
        local.private_subnet_name,
        local.domain_name
    )

    private_subnet_dhcp_enable = var.private_subnet_dhcp_enable

    private_subnet_dhcp_pool_start = cidrhost(
        local.private_network_cidr,
        var.private_subnet_dhcp_pool_start
    )
    private_subnet_dhcp_pool_end = cidrhost(
        local.private_network_cidr,
        var.private_subnet_dhcp_pool_end
    )

    private_network_name = format("%s-%s",
        var.private_network_name,
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

    nameservers = var.nameservers
}