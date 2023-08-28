env            = "dev"
default_vpc_id = "vpc-0ca69ab50a1044e02"
bastion_cidr   = ["172.31.12.7/32"]
# monitor_cidr   = ["172.31.9.50/32"]

vpc = {
  main = {
    cidr_block        = "10.0.0.0/16"
    availability_zone = ["us-east-1a", "us-east-1b"]
    public_subnets = {
      public = {
        name        = "public"
        cidr_block  = ["10.0.0.0/24", "10.0.1.0/24"]
        internet_gw = true
      }
    }
    private_subnets = {
      web = {
        name       = "web"
        cidr_block = ["10.0.2.0/24", "10.0.3.0/24"]
        nat_gw     = true
      }
      app = {
        name       = "app"
        cidr_block = ["10.0.4.0/24", "10.0.5.0/24"]
        nat_gw     = true
      }
      db = {
        name       = "db"
        cidr_block = ["10.0.6.0/24", "10.0.7.0/24"]
        nat_gw     = true
      }
    }

    }
 }

#

# apps = {
#   frontend = {
#     component               = "frontend"
#     vpc_name                = "main"
#     subnets_type            = "private_subnet_ids"
#     subnets_name            = "web"
#     allow_cidr_subnets_type = "public_subnets"
#     allow_cidr_subnets_name = "public"
#     app_port                = 80
#     max_size                = 2
#     min_size                = 1
#     desired_capacity        = 1
#     instance_type           = "t3.micro"
#     alb                     = "public"
#     listener_priority       = 0
#   }
#   catalogue = {
#     component               = "catalogue"
#     vpc_name                = "main"
#     subnets_type            = "private_subnet_ids"
#     subnets_name            = "app"
#     app_port                = 8080
#     allow_cidr_subnets_type = "private_subnets"
#     allow_cidr_subnets_name = "app"
#     max_size                = 2
#     min_size                = 1
#     desired_capacity        = 1
#     instance_type           = "t3.micro"
#     alb                     = "private"
#     listener_priority       = 100
#   }
#   user = {
#     component               = "user"
#     vpc_name                = "main"
#     subnets_type            = "private_subnet_ids"
#     subnets_name            = "app"
#     app_port                = 8080
#     allow_cidr_subnets_type = "private_subnets"
#     allow_cidr_subnets_name = "app"
#     max_size                = 2
#     min_size                = 1
#     desired_capacity        = 1
#     instance_type           = "t3.micro"
#     alb                     = "private"
#     listener_priority       = 101
#   }
#   cart = {
#     component               = "cart"
#     vpc_name                = "main"
#     subnets_type            = "private_subnet_ids"
#     subnets_name            = "app"
#     app_port                = 8080
#     allow_cidr_subnets_type = "private_subnets"
#     allow_cidr_subnets_name = "app"
#     max_size                = 2
#     min_size                = 1
#     desired_capacity        = 1
#     instance_type           = "t3.micro"
#     alb                     = "private"
#     listener_priority       = 102
#   }
#   shipping = {
#     component               = "shipping"
#     vpc_name                = "main"
#     subnets_type            = "private_subnet_ids"
#     subnets_name            = "app"
#     app_port                = 8080
#     allow_cidr_subnets_type = "private_subnets"
#     allow_cidr_subnets_name = "app"
#     max_size                = 2
#     min_size                = 1
#     desired_capacity        = 1
#     instance_type           = "t3.micro"
#     alb                     = "private"
#     listener_priority       = 103
#   }
#   payment = {
#     component               = "payment"
#     vpc_name                = "main"
#     subnets_type            = "private_subnet_ids"
#     subnets_name            = "app"
#     app_port                = 8080
#     allow_cidr_subnets_type = "private_subnets"
#     allow_cidr_subnets_name = "app"
#     max_size                = 2
#     min_size                = 1
#     desired_capacity        = 1
#     instance_type           = "t3.micro"
#     alb                     = "private"
#     listener_priority       = 104
#   }
# }