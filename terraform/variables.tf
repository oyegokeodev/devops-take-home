variable "aws_region" {
  description = "AWS region for all resources"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "EKS cluster name"
  type        = string
  default     = "max-fargate-cluster"
}

variable "eks_version" {
  description = "EKS Kubernetes version"
  type        = string
  default     = "1.29"
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.20.0.0/16"
}

variable "tags" {
  description = "Common tags"
  type        = map(string)
  default = {
    Project     = "devops-take-home"
    ManagedBy   = "terraform"
    Environment = "prod"
  }
}
