output "module_s3" {
  description = "module_s3"
  value = "${module.GRP5_s3}"
}

output "module_ec2" {
  description = "module_ec2"
  value = "${module.GRP5_ec2}"
}