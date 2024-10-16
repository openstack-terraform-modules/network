resource openstack_networking_network_v2 private {
    name = local.private_network_name
    admin_state_up = true
    tags = [
        format("DEPLOYMENT_UUID=%s", local.deployment.uuid),
        format("DEPLOYMENT_ID=%s", local.deployment.id),
        format("NETWORK_NAME=%s", local.private_network_name),
        format("NETWORK_DOMAIN=%s", local.domain_name),
        format("NETWORK_FQDN=%s", local.private_network_fqdn),
    ]
}