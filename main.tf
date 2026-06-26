terraform {
  required_providers {
    aws = { source = "hashicorp/aws", version = "~> 5.0" }
  }
}

provider "aws" { region = var.region }

module "dg-ec2-instance-harness-repo" {
  source  = "module.app.harness.io/l7HREAyVTnyfUsfUtPZUowN0dbHpRgRDOgg09wZK__gg/dg-ec2-instance-harness-repo"
  version = "v1.0.0"
}

