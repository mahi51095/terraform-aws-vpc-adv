# Forcing user to provide value
variable "cidr_block" {
  
}

variable "enable_dns_hostnames" {
    default = true
  
}

variable "enable_dns_support" {

    default = true
  
}

variable "project_name" {
  
}

variable "common_tags" {
    default = {}
  
}

variable "vpc_tags" {

    default = {}
  
}

variable "igw_tags" {
    default = {}
  
}

variable "public_subnet_cidr" {
    
  type = list(string)

  description = "A list of exactly 2 availability zones"

  validation {
    condition     = length(var.public_subnet_cidr) == 2
    error_message = "You must provide exactly 2 availability zones."
  }
}

variable "private_subnet_cidr" {
    
  type = list(string)

  description = "A list of exactly 2 availability zones"

  validation {
    condition     = length(var.private_subnet_cidr) == 2
    error_message = "You must provide exactly 2 availability zones."
  }
}

variable "database_subnet_cidr" {
    
  type = list(string)

  description = "A list of exactly 2 availability zones"

  validation {
    condition     = length(var.database_subnet_cidr) == 2
    error_message = "You must provide exactly 2 availability zones."
  }
}

variable "nat_gateway_tags" {
    default = {}
  
}

variable "public_route_table_tags" {
    default = {}
  
}

variable "private_route_table_tags" {
    default = {}
  
}

variable "database_route_table_tags" {
    default = {}
  
}

variable "db_subnet_group_tags" {
    default = {}
  
}
