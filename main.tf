module "GRP5_s3" {
    depends_on = [module.GRP5_ec2]
    module_bucket_name = var.GRP5_bucket_name
    module_ec2_public_ip = module.GRP5_ec2.public_ip
    source = "./modules/S3"
}

module "GRP5_ec2" {
    module_ami = var.GRP5_ami
    module_instance_type = var.GRP5_instance_type
    module_web_msg = var.GRP5_web_msg
    source = "./modules/EC2"
}