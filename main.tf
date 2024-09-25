module "vpc" {
    source = "./modules/vpc"
    name = var.name
    vpc_cidr = var.vpc_cidr
    subnets = var.subnets
}

# resource "ncloud_vpc" "vpc" {
#  ipv4_cidr_block = "10.0.0.0/24"
#  name = "miral-vpc-test"
# }