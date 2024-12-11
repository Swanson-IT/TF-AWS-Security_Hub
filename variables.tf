variable "audit_account_id" {
  description = "The AWS Account ID of the audit account designated as the Security Hub administrator for the organization"
  type        = string
}

/*

variable "config_role_arn" {
  description = "The IAM role ARN for AWS Config to assume when recording resources"
  type        = string
}

variable "config_s3_bucket" {
  description = "The S3 bucket name where AWS Config data will be stored"
  type        = string
}

*/