variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name for resource naming"
  type        = string
  default     = "microservices-project"
}

variable "ec2_key_pair" {
  description = "Name of the existing EC2 Key Pair to use"
  type        = string
  default     = "my-key-pair"
}
