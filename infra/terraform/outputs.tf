output "vpc_id" {
  description = "The ID of the VPC"
  value       = module.vpc.vpc_id
}

output "eks_cluster_id" {
  description = "The ID of the EKS Cluster"
  value       = module.eks.cluster_id
}

output "eks_cluster_endpoint" {
  description = "The endpoint of the EKS Cluster"
  value       = module.eks.cluster_endpoint
}

output "eks_node_security_group_id" {
  description = "Security Group ID for EKS nodes"
  value       = module.eks.node_security_group_id
}
