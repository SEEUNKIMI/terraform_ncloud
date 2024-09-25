# variable "ncloud_version" {
#     type = string
# }

variable "zone" {
    description = "default ncloud zone"
    type = string
}
variable "vpc_cidr" {
    description = "cidr block for vpc"
    type = string
}

variable "name" {
    description = "project name"
    type = string
}

variable "subnets" {
    description = "subnets list"
    type = map(object ({
        subnet_name = string
        cidr = string
        zone = string
        subnet_type = string
        usage_type = string
    }))
}

