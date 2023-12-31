
variable "aws_region" {
  description = "N. Virginia US East 1"
  type        = string
  default     = "us-east-1"
}

variable "vpc_name" {
  description = "Development VPC"
  type        = string
  default     = "dev_vpc"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_azs" {
  description = "Availability zones for VPC"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "vpc_private_subnets" {
  description = "Private subnets for VPC"
  type        = list(string)
  default     = ["10.0.1.0/28", "10.0.2.0/28"]
}

variable "vpc_public_subnets" {
  description = "Public subnets for VPC"
  type        = list(string)
  default     = ["10.0.101.0/28", "10.0.102.0/28"]
}

variable "vpc_enable_nat_gateway" {
  description = "Enable NAT gateway for VPC"
  type        = bool
  default     = true
}

variable "vpc_tags" {
  description = "Tags to apply resources created by VPC module"
  type        = map(string)
  default = {
    Terraform   = "true"
    Environment = "dev"
  }
}

variable "ami" {
  description = "Amazon Linux AMI"
  type        = string
  default     = "ami-0fc9e52ba2aedb00d"
}
