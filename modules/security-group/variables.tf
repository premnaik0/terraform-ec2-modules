variable "name" {
  description = "Name of the security group"
  type        = string
}

variable "vpc_id" {
  description = "VPC where the security group is created"
  type        = string
}

variable "ingress_ports" {
  description = "List of TCP ports to allow"
  type        = list(number)
  default     = [22]
}

variable "allowed_cidr" {
  description = "CIDR blocks allowed to reach the ports"
  type        = list(string)
  default     = ["0.0.0.0/0"]
}

variable "tags" {
  description = "Tags applied to the security group"
  type        = map(string)
  default     = {}
}