provider "aws" {
  region = "us-east-1"  # Change to your AWS region
}

# Create Security group 
resource "aws_security_group" "redis_sg" {
  name_prefix = "redis-sg-"

  ingress {
    from_port   = 6379
    to_port     = 6379
    protocol    = "tcp"
    cidr_blocks = var.allowed_cidr_blocks
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

# Create Subnet group
resource "aws_elasticache_subnet_group" "redis_subnet_group" {
  name       = var.cluster_name
  subnet_ids = var.subnet_ids
}

#Create Elasticache CLuster
resource "aws_elasticache_cluster" "redis" {
  cluster_id           = var.cluster_name
  engine               = "redis"
  engine_version       = var.engine_version
  node_type            = var.instance_type
  num_cache_nodes      = var.num_nodes
  parameter_group_name = "default.redis7"
  subnet_group_name    = aws_elasticache_subnet_group.redis_subnet_group.name
  security_group_ids   = [aws_security_group.redis_sg.id]

  tags = {
    Name = var.cluster_name
  }
}
