resource openstack_networking_router_v2 public_to_private {
    name = local.public_to_private_router_name
    admin_state_up = true
    external_network_id = data.openstack_networking_network_v2.public.id
    tags = [
        format("DEPLOYMENT_UUID=%s", local.deployment.uuid),
        format("DEPLOYMENT_ID=%s", local.deployment.id),
        format("ROUTER_NAME=%s", local.public_to_private_router_name),
        format("ROUTER_FQDN=%s", local.public_to_private_router_fqdn)
    ]

}