module "elasticache" {
  source              = "./module"
  aws_region          = var.aws_region
  cluster_name        = var.cluster_name
  engine_version      = var.engine_version
  instance_type       = var.instance_type
  num_nodes           = var.num_nodes
  subnet_ids          = var.subnet_ids
  allowed_cidr_blocks = var.allowed_cidr_blocks
}
