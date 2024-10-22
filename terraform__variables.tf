variable deployment {
    type = object({
      id = string
      uuid = string
      tenant_name = string
    })
}
variable public_network_name {
    type = string
}

variable nameservers {
    type = list(string)
    default = [ "8.8.8.8" ]
}

variable private_network_cidr {
    type = string
}

variable private_network_name {
    type = string
    default = "private"
}

#variable domain_name {
#    type = string
#}

variable private_subnet_dhcp_enable {
    type    = bool
    default = false
}

variable private_subnet_dhcp_pool_start {
    type = number
    default = 100
}

variable private_subnet_dhcp_pool_end {
    type = number
    default = 200
}