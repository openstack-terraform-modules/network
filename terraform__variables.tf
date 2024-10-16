variable PUBLIC_NETWORK_NAME {
    type = string
}

variable CLUSTER_MANAGER_COUNT {
    type = number
}

variable CLUSTER_COMPUTE_COUNT {
    type = number
}

variable CLUSTER_PREFIX {
    type = string
}

variable NAMESERVERS {
    type = list
    default = [ "8.8.8.8" ]
}

variable PRIVATE_NETWORK_CIDR {
    type = string
}

variable PRIVATE_NETWORK_NAME {
    type = string
}

variable DOMAIN_NAME {
    type = string
}

variable PRIVATE_CLUSTER {
    type    = bool
    default = true
}

variable PRIVATE_SUBNET_DHCP_ENABLE {
    type    = bool
    default = false
}

variable PRIVATE_SUBNET_DHCP_POOL_START {
    type = number
    default = 100
}

variable PRIVATE_SUBNET_DHCP_POOL_END {
    type = number
    default = 200
}