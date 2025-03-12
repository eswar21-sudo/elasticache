variable "aws_region" {
  description = "AWS region"
  type = string
}

variable "cluster_name" {
  description = "Name of cluster"
  type = string
}

variable "instance_type" { 
  description = "Type of instance"
  type = string
}

variable "engine_version" {
  description = "version of engine"
  type = string
}

variable "num_nodes" {
  description = "number of nodes"
  type = string
  default = 1 
}

variable "subnet_ids" {
  description = "subnets of elasticache"
  type = list(string) 
}

variable "allowed_cidr_blocks" {
  description = "cidr blocks of security group"
  type = list(string) 
}
