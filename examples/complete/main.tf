module "vpc" {
    source = "./module/vpc"

    vpc_config = {
        cidr_block = "10.0.0.0/16"
        name = "my-vpc"
    }

    subnet_config = {
      public_subnet = {
        cidr_block = "10.0.0.0/24"
        az = "ap-south-1a"
        public = true
      }

      private_subnet = {
        cidr_block = "10.0.1.0/24"
        az = "ap-south-1b"
      }
    }
}