# Weasel-CRM
Assesment
# Terraform Infrastructure for Weasel

This Terraform project sets up infrastructure for the Weasel application in the AWS us-east-1 region. It creates EC2 instances, an RDS database, a security group, and an S3 bucket.

## Modules

The infrastructure is organized into the following modules:

- **ec2_instances**: Manages the creation of EC2 instances for the Weasel application.
- **rds**: Manages the creation of an RDS database for the Weasel application.
- **security_group**: Manages the creation of a security group for the Weasel application.
- **s3_bucket**: Manages the creation of an S3 bucket for the Weasel application.

## Usage

1. Clone this repository:

    ```bash
    git clone <repository-url>
    cd <repository-directory>
    ```

2. Initialize Terraform:

    ```bash
    terraform init
    ```

3. Apply the Terraform configuration:

    ```bash
    terraform apply
    ```

   This will prompt you to confirm the changes. Type `yes` and press Enter.

4. Review Outputs:

   After the infrastructure is created, Terraform will output information about the created resources, such as EC2 instance IDs, RDS endpoint, security group ID, and S3 bucket ID.

5. Destroy Infrastructure (Optional):

   If you want to destroy the created infrastructure, you can run:

    ```bash
    terraform destroy
    ```

   This will prompt you to confirm the destruction. Type `yes` and press Enter.

## Variables

- **ec2_instances/variables.tf**: Defines variables for the EC2 instances module.
- **rds/variables.tf**: Defines variables for the RDS module.
- **security_group/variables.tf**: Defines variables for the security group module.
- **s3_bucket/variables.tf**: Defines variables for the S3 bucket module.

## Outputs

- **ec2_instances/outputs.tf**: Defines outputs for the EC2 instances module.
- **rds/outputs.tf**: Defines outputs for the RDS module.
- **security_group/outputs.tf**: Defines outputs for the security group module.
- **s3_bucket/outputs.tf**: Defines outputs for the S3 bucket module.

## Notes

- Ensure that you have valid AWS credentials configured locally.
- Review and customize the variable values according to your project requirements.

Feel free to modify this README to include any additional information specific to your project or organization.
