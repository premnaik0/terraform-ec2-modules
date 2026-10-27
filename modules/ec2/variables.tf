variable "name" {
  description = "Name tag of the instance"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "subnet_id" {
  description = "Subnet ID to launch the instance in"
  type        = string
}

variable "security_group_ids" {
  description = "List of security group IDs"
  type        = list(string)
}

variable "key_name" {
  description = "Existing EC2 key pair name (optional)"
  type        = string
  default     = null
}

variable "associate_public_ip" {
  description = "Assign a public IP"
  type        = bool
  default     = true
}

variable "root_volume_size" {
  description = "Root EBS volume size in GiB"
  type        = number
  default     = 8
}

variable "user_data" {
  description = "Startup script (optional)"
  type        = string
  default     = null
}

variable "tags" {
  description = "Tags applied to the instance"
  type        = map(string)
  default     = {}
}