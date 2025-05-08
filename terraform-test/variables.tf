variable "region" {
  description = "Default aws region"
  type        = string
  default     = "us-east-1"
}

# variable "environment" {
#   description = "Environment such as dev/stage and etc..."
#   type        = string
# }

# variable "prefix" {
#   description = "Prefix for all the resources to be created. Please note thst 2 allows only lowercase alphanumeric characters and hyphen"
#   type        = string
#   default     = "sphere"
# }

# variable "domain_name" {
#   type = string
# }

# variable "account" {
#   type = string
# }

# ### VPC ###
# variable "vpc_name" {
#   description = "This is the name of the vpc"
#   type        = string
# }
# variable "vpc_cidr" {
#   description = "VPC CIDR"
#   type        = string
# }

# variable "public_subnets" {
#   description = "Private subnets CIDR"
#   type        = list(string)
# }

# variable "private_subnets" {
#   description = "Private subnets CIDR"
#   type        = list(string)
# }

# variable "database_subnets" {
#   description = "Database subnets CIDR"
#   type        = list(string)
# }

# variable "availability_zones" {
#   description = "Availability zones in the region"
#   type        = list(string)
# }

# variable "enable_dns_support" {
#   description = "Whether to enable DNS support"
#   type        = bool
# }

# variable "enable_dns_hostnames" {
#   description = "Whether to enable DNS hostnames"
#   type        = bool
# }

# variable "enable_nat_gateway" {
#   description = "Whether to enable NAT gateway"
#   type        = bool
# }

# variable "single_nat_gateway" {
#   description = "Whether to use a single NAT gateway"
#   type        = bool
# }

# variable "one_nat_gateway_per_az" {
#   description = "Whether to use one NAT gateway per availability zone"
#   type        = bool
# }

# variable "create_database_subnet_route_table" {
#   description = "Whether to create a route table for the database subnet"
#   type        = bool
# }
