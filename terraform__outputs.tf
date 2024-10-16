output outputs {
    value = {
        router  = openstack_networking_router_v2.public_to_private
        network = openstack_networking_network_v2.private
        subnet  = openstack_networking_subnet_v2.private
    }
}