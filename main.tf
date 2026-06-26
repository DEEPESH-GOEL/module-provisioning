terraform {
  required_providers {
    aws = { source = "hashicorp/aws", version = "~> 5.0" }
  }
}

provider "aws" { region = var.region }

module "dg-ec2-instance-harness-repo" {
  instance_name = "Ec2-from-module"
  source  = "module.harness.io/l7HREAyVTnyfUsfUtPZUowN0dbHpRgRDOgg09wZK__gg/dg-ec2-instance-harness-repo/aws"
  version = "v1.0.0"
}

