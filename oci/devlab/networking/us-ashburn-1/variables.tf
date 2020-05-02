
#Scope = Networking


# VCNs ---------->

variable "vcn_lb_dns_label" { default = "lb" }
variable "vcn_public_dns_label" { default = "pub" }
variable "vcn_private_dns_label" { default = "priv" }
variable "vcn_management_dns_label" { default = "mgmt" }

variable "vcn_lb_display_name" { default = "vcn_lb" }
variable "vcn_public_display_name" { default = "vcn_public" }
variable "vcn_private_display_name" { default = "vcn_private" }
variable "vcn_management_display_name" { default = "vcn_management" }


#REGION-1
variable "vcn_lb_cidr_block" { default = "192.168.0.0/24" }
variable "vcn_public_cidr_block" { default = "192.168.1.0/24" }
variable "vcn_private_cidr_block" { default = "10.0.1.0/24" }
variable "vcn_management_cidr_block" { default = "172.16.1.0/24" }

# SUBNETS ---------->
variable "subnet_dns_label_ad1" { default = "ad1" }
variable "subnet_dns_label_ad2" { default = "ad2" }
variable "subnet_dns_label_ad3" { default = "ad3" }

variable "subnet_lb_display_name_ad1" { default = "subnet_lb_ad1" }
variable "subnet_lb_display_name_ad2" { default = "subnet_lb_ad2" }
variable "subnet_lb_display_name_ad3" { default = "subnet_lb_ad3" }

variable "subnet_public_display_name_ad1" { default = "subnet_public_ad1" }
variable "subnet_public_display_name_ad2" { default = "subnet_public_ad2" }
variable "subnet_public_display_name_ad3" { default = "subnet_public_ad3" }

variable "subnet_private_display_name_ad1" { default = "subnet_private_ad1" }
variable "subnet_private_display_name_ad2" { default = "subnet_private_ad2" }
variable "subnet_private_display_name_ad3" { default = "subnet_private_ad3" }

variable "subnet_management_display_name_ad1" { default = "subnet_management_ad1" }
variable "subnet_management_display_name_ad2" { default = "subnet_management_ad2" }
variable "subnet_management_display_name_ad3" { default = "subnet_management_ad3" }

variable "subnet_lb_cidr_block_ad1" { default = "192.168.0.0/26" }
variable "subnet_lb_cidr_block_ad2" { default = "192.168.0.64/26" }
variable "subnet_lb_cidr_block_ad3" { default = "192.168.0.128/26" }

variable "subnet_public_cidr_block_ad1" { default = "192.168.1.0/26" }
variable "subnet_public_cidr_block_ad2" { default = "192.168.1.64/26" }
variable "subnet_public_cidr_block_ad3" { default = "192.168.1.128/26" }

variable "subnet_private_cidr_block_ad1" { default = "10.0.1.0/26" }
variable "subnet_private_cidr_block_ad2" { default = "10.0.1.64/26" }
variable "subnet_private_cidr_block_ad3" { default = "10.0.1.128/26" }

variable "subnet_management_cidr_block_ad1" { default = "172.16.1.0/26" }
variable "subnet_management_cidr_block_ad2" { default = "172.16.1.64/26" }
variable "subnet_management_cidr_block_ad3" { default = "172.16.1.128/26" }

variable "availability_domain" { default = 0 }

#Internet Gateway
variable "internet_gateway_enabled" { default = "true" }
variable "route_table_route_rules_destination" { default = "0.0.0.0/0" }

variable "internet_gateway_display_name_public" { default = "internet_gateway_public" }

#Route Tables
variable "route_table_route_rules_destination_type" { default = "CIDR_BLOCK" }

#Route Tables - public
variable "route_table_display_name_public" { default = "route_table_public" }

