vpc_cidr = "10.0.0.0/16"
name = "testproject"
zone = "KR-1"

subnets = {
    subnet_pub_01 = {
        cidr = "10.0.1.0/24"
        zone = "KR-1"
        subnet_type = "PUBLIC"
        usage_type = "GEN"
        subnet_name = "pub-kr1-sbn"
    }
    subnet_pub_nat_01 = {   
        cidr = "10.0.3.0/24"
        zone = "KR-1"
        subnet_type = "PUBLIC"
        usage_type = "NATGW"
        subnet_name = "pub-kr1-nat-sbn"
    }
    subnet_pri_01 = {
        cidr = "10.0.2.0/24"
        zone = "KR-1"
        subnet_type = "PRIVATE"
        usage_type = "GEN"    
        subnet_name = "pri-kr1-sbn"
    }
}