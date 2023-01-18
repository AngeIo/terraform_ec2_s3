# Défini les variables AWS Region
variable "region" {
  description = "Infrastructure region"
  type = string
}

# Défini les variables AWS credentials
variable "shared_credentials_file" {
  description = "AWS credentials file"
  type = string
}

# Défini le nom du bucket S3
variable "GRP5_bucket_name" {
  description = "Name of bucket"
  type = string
}

# Défini la référence de l'ami (image système de l'instance)
variable "GRP5_ami" {
  description = "Name of ami"
  type = string
}

# Défini le type d'instance EC2
variable "GRP5_instance_type" {
  description = "Name of instance type"
  type = string
}

# # Défini le CIDR du VPC
# variable "GRP5_vpc_cidr" {
#   description = "CIDR of VPC"
#   type = string
# }

# Défini le message à afficher sur la page web
variable "GRP5_web_msg" {
  description = "Message to show on the main web page"
  type = string
}

