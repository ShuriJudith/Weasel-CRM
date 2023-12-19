variable "engine" {
  description = "Database engine for the RDS instance"
  type        = string
  default     = "mysql"
}

variable "engine_version" {
  description = "Database engine version for the RDS instance"
  type        = string
  default     = "8.0.34"
}

variable "instance_class" {
  description = "Instance class for the RDS instance"
  type        = string
  default     = "db.t2.micro"
}

variable "allocated_storage" {
  description = "Allocated storage for the RDS instance (in GB)"
  type        = number
  default     = 10
}

variable "storage_type" {
  description = "Storage type for the RDS instance"
  type        = string
  default     = "gp2"
}

variable "publicly_accessible" {
  description = "Whether the RDS instance is publicly accessible"
  type        = bool
  default     = false
}

variable "username" {
  description = "Username for the RDS instance"
  type        = string
  default     = "admin"
}

variable "password" {
  description = "Password for the RDS instance"
  type        = string
  default     = "admin123456"
}

variable "vpc_security_group_ids" {
  description = "List of security group IDs for the RDS instance"
  type        = list(string)
}
