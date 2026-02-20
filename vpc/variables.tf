variable "env_name" {
  type        = string
  description = "Environment name (e.g., develop, staging, prod)"
}

variable "zone" {
  type        = string
  description = "Availability zone for subnet"
}

variable "cidr" {
  type        = string
  description = "CIDR block for subnet (e.g., 10.0.1.0/24)"
}