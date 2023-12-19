variable "instance_count" {
  description = "Number of EC2 instances to create"
  type        = number
  default     = 2
}

variable "ami" {
  description = "AMI ID for the EC2 instances"
  type        = string
  default     = "ami-0fc5d935ebf8bc3bc" # AWS provided Ubuntu 22.04 AMI
}

variable "instance_type" {
  description = "Type of EC2 instances"
  type        = string
  default     = "t2.micro"
}

variable "subnet_id" {
  description = "Subnet ID for the EC2 instances"
  type        = string
  default     = "subnet-0be26cd14292e8e84"
}

variable "vpc_security_group_ids" {
  description = "List of security group IDs for EC2 instances"
  type        = list(string)
}
