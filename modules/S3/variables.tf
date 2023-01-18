variable "module_bucket_name" {
  description = "Unique name of aws S3 bucket"
  type = string
}

variable "module_ec2_public_ip" {
  description = "Unique IP address of aws instance type"
  type = string
}

variable "module_acl_value" {
  description = "Define type of access to bucket"
  default = "public-read"
}