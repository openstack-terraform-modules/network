resource openstack_networking_router_interface_v2 public_to_private {
    force_destroy = true
    router_id = openstack_networking_router_v2.public_to_private.id
    port_id = openstack_networking_port_v2.router_private.id
}