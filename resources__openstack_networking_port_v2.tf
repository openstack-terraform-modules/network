resource openstack_networking_port_v2 router_private {
    name = local.public_to_private_router_name

    network_id = openstack_networking_network_v2.private.id
    admin_state_up = true
    fixed_ip {
        subnet_id = openstack_networking_subnet_v2.private.id
        ip_address = cidrhost(
            local.private_network_cidr,
            -2
        )
    }

    tags = [
        format("DEPLOYMENT_UUID=%s", local.deployment.uuid),
        format("DEPLOYMENT_ID=%s", local.deployment.id),
        format("PORT_NAME=%s", local.public_to_private_router_name),
        format("PORT_DOMAIN=%s", local.domain_name),
        format("PORT_FQDN=%s-%s",
            local.public_to_private_router_name,
            local.domain_name
        ),
    ]
}