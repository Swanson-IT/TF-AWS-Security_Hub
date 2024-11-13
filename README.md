# TF-AWS-Security_Hub

# Terraform AWS Security Hub Organization Module

This Terraform module configures AWS Security Hub to designate an audit account as the organization-wide administrator. It also enables a basic AWS Config setup for compliance monitoring.

## Usage

To use this module, include it in your Terraform configuration, specifying the required variables.

### Example

```hcl
module "security_hub" {
  source = "github.com/Swanson-IT/TF-AWS-SecurityHub?v1.0" # Use v1.0 tag

  audit_account_id = "123456789012"                     # AWS Account ID of the audit account
  config_role_arn  = "arn:aws:iam::123456789012:role/AWSConfigRole" # IAM Role ARN for AWS Config
  config_s3_bucket = "my-config-bucket"                 # S3 bucket for AWS Config data
}