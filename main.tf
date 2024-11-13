# Enable AWS Security Hub
resource "aws_securityhub_account" "this" {}

# Enable Security Hub in the Audit Account as the Organization Admin
resource "aws_securityhub_organization_admin_account" "audit_admin" {
  admin_account_id = var.audit_account_id
}

# Enable Security Hub Standards (e.g., CIS AWS Foundations Benchmark)
resource "aws_securityhub_standards_subscription" "cis_benchmark" {
  standards_arn = "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.2.0"
}

# Basic AWS Config Setup
resource "aws_config_configuration_recorder" "main" {
  role_arn = var.config_role_arn
  name     = "config-recorder"

  recording_group {
    all_supported = true
    include_global_resource_types = true
  }
}

resource "aws_config_delivery_channel" "main" {
  s3_bucket_name = var.config_s3_bucket
}