output "aws_eip_web_ip" {
  value = "${module.ec2.aws_eip_web_ip}"
}

output "aws_db_instance_address" {
  value = "${module.rds.aws_db_instance_address}"
}

output "aws_elasticache_cluster_node_address" {
  value = "${module.elasti_cache.aws_elasticache_cluster_node_address}"
}