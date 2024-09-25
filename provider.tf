terraform {
  required_providers {
    ncloud = {
      source = "NaverCloudPlatform/ncloud"
      version = "3.1.1"
    }
  }
}


// Configure the ncloud provider
provider "ncloud" {
  region      = "KR"
  site = "public"
  support_vpc = true
}