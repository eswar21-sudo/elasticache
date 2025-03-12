variable "aws_region" {
  description = "Region for AWS"
  default = "us-east-1" 
}

variable "cluster_name" { 
  description = "Name of the cluster "
  type = string 
}

variable "num_nodes" {
  description = "number of nodes"
  type = string
  default = 1

}
variable "subnet_ids" { 
  description = "Subnets for eks_cluster "
  type = list(string) 
}

variable "engine_version" {
  description = "version of the Engine"
  type = string
 
}

variable "instance_type" {
  description = "Type of Instances"
  type = string

}

variable "allowed_cidr_blocks" {
  description = "cidr blocks of security group"
  type = list(string)
}
