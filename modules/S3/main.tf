# Permet de créer notre bucket
resource "aws_s3_bucket" "GRP5_bucket" {
  bucket = var.module_bucket_name
  acl = var.module_acl_value
  force_destroy = true
}

# Permet de créer notre policy
data "aws_iam_policy_document" "allow_access_from_ec2_instance" {
  statement {
    sid = "IPAddressAllowed"
    effect = "Allow"
    actions = ["s3:*"]

    # Permet d'accéder à notre bucket et à tous les objets qu'il contient
    resources = [
      "arn:aws:s3:::${var.module_bucket_name}",
      "arn:aws:s3:::${var.module_bucket_name}/*",
    ]

    # Permet à tous les utilisateurs d'accéder à notre ressource
    principals {
      type        = "*"
      identifiers = ["*"]
    }

    # Permet d'autoriser l'accès à notre ressource uniquement depuis l'adresse IP de notre instance EC2
    condition {
      test = "IpAddress"
      variable = "aws:SourceIp"
      values = [
        "${var.module_ec2_public_ip}",
      ]
    }
  }
}

# Permet de lier notre bucket à notre policy
resource "aws_s3_bucket_policy" "GRP5_bucket_policy" {
  bucket = aws_s3_bucket.GRP5_bucket.id
  policy = data.aws_iam_policy_document.allow_access_from_ec2_instance.json
}
