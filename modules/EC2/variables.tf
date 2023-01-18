variable "module_env" {
  description = "Type of environment (dev, prod, etc.)"
  default = "prod"
  type = string
}

variable "module_ami" {
  description = "Unique name of aws ami"
  type = string
}

variable "module_instance_type" {
  description = "Unique name of aws instance type"
  type = string
}

variable "module_vpc_cidr" {
  description = "Unique cidr block for vpc"
  default = "10.0.0.0/16"
  type = string
}

variable "module_subnet_cidr" {
  description = "Unique cidr block for subnet"
  default = "10.0.1.0/24"
  type = string
}

variable "module_private_ip" {
  description = "Unique private ip for network interface"
  default = "10.0.1.50"
  type = string
}

variable "module_web_msg" {
  description = "Unique message for web server main page"
  default = "Bonjour"
  type = string
}
