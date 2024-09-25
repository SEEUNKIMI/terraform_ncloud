terraform {
  required_providers {
    ncloud = {
      source = "NaverCloudPlatform/ncloud"
      version = "3.1.1"
    }
  }
}

resource "ncloud_vpc" "vpc" {
 ipv4_cidr_block = var.vpc_cidr
 name = "${var.name}-vpc"
}

resource "ncloud_subnet" "subnets" {
    for_each = var.subnets

    vpc_no         = ncloud_vpc.vpc.id
    subnet         = each.value.cidr
    zone           = each.value.zone
    network_acl_no = ncloud_vpc.vpc.default_network_acl_no
    subnet_type    = each.value.subnet_type // PUBLIC(Public) | PRIVATE(Private)
    // below fields is optional
    name           = "${var.name}-${each.value.subnet_name}"
    usage_type     = each.value.usage_type    // GEN(General) | LOADB(For load balancer)
}

resource "ncloud_nat_gateway" "nat_gateway" {
    vpc_no      = ncloud_vpc.vpc.id
    zone        = var.zone
    subnet_no   = ncloud_subnet.subnets[local.natgw_subnet].id
    // below fields are optional
    name        = "${var.name}-ngw"
}

locals {  #usage_type 이 NATGW 인 서브넷 정의
  natgw_subnet = [
    for subnet_key, subnet in var.subnets :
    subnet_key
    if subnet.usage_type == "NATGW"
  ][0]
}
