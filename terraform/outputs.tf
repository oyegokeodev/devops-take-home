output "vpc_id" {
  value       = aws_vpc.main.id
  description = "VPC ID"
}

output "cluster_name" {
  value       = aws_eks_cluster.main.name
  description = "EKS cluster name"
}

output "cluster_endpoint" {
  value       = aws_eks_cluster.main.endpoint
  description = "EKS API server endpoint"
}

output "alb_security_group_id" {
  value       = aws_security_group.alb.id
  description = "Security group for the internet-facing ALB"
}

output "pods_security_group_id" {
  value       = aws_security_group.pods.id
  description = "Security group intended for pod/workload ingress control"
}

output "configure_kubectl" {
  value       = "aws eks update-kubeconfig --region ${var.aws_region} --name ${aws_eks_cluster.main.name}"
  description = "Command to configure kubectl"
}
