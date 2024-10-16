resource openstack_networking_subnet_v2 private {
    network_id = openstack_networking_network_v2.private.id
    cidr = local.private_network_cidr
    #
    # https://developer.hashicorp.com/terraform/language/functions/cidrhost
    #
    gateway_ip = cidrhost(
        local.private_network_cidr,
        -2
    )

    enable_dhcp = local.private_subnet_dhcp_enable

    allocation_pool {
        start = local.private_subnet_dhcp_pool_start
        end = local.private_subnet_dhcp_pool_end
    }

    dns_nameservers = local.nameservers
    ip_version = 4

    name = local.private_subnet_name

    tags = [
        format("DEPLOYMENT_UUID=%s", local.deployment.uuid),
        format("DEPLOYMENT_ID=%s", local.deployment.id),
        format("SUBNET_NAME=%s", local.private_subnet_name),
        format("SUBNET_DOMAIN=%s",local.domain_name),
        format("SUBNET_FQDN=%s", local.private_subnet_fqdn),
    ]

}