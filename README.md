# terraform-ec2-modules

Reusable Terraform modules for AWS.

## Modules
- `modules/security-group`: security group with configurable ingress ports
- `modules/ec2`: EC2 instance (Amazon Linux 2023, encrypted gp3 root volume, IMDSv2)

## Usage
```hcl
module "ec2" {
  source = "github.com/premnaik0/terraform-ec2-modules//modules/ec2?ref=v1.0.0"
  ...
}
```