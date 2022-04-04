/**
Added aws ecr url to be referenced
**/

locals {
  tags = {
    created_by = "${var.app_name}-terraform"
  }

  aws_ecr_url = "${data.aws_caller_identity.current.account_id}.dkr.ecr.${var.aws_region}.amazonaws.com"
}