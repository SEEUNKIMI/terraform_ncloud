vpc_cidr = "10.0.0.0/16"
name = "testproject"

subnets = {
    subnet_pub_01 = {
        cidr = "10.0.1.0/24"
        zone = "KR-1"
        subnet_type = "PUBLIC"
        usage_type = "GEN"
        subnet_name = "pub-kr1-sbn"
    }
    subnet_pri_01 = {
        cidr = "10.0.2.0/24"
        zone = "KR-1"
        subnet_type = "PRIVATE"
        usage_type = "GEN"    
        subnet_name = "pri-kr1-sbn"
    }
}