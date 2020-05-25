# terraform-cloud


![](https://github.com/baburajk/terraform/blob/develop/diagrams/terraform_aws.png)

Terraform Cloud - AWS, GCLOUD, OCI, Azure

## /aws - Directory to hold all AWS specific terraform scripts.

Version 1.0 
Create a sandbox environment with a simple VPC, Subnets, Security Groups, NACL, ELB, EC2 instances across multiple regions/AZ's using
terraform modules.

Step 1: git clone -b '1.0' --single-branch git@github.com:baburajk/terraform.git

Step 2: terraform apply

Step 3: Validate

```
babu@meghmalhar:~/meghmalhar/gitroot/terraform/aws/modules\> curl -s lbr-1802745961.us-east-1.elb.amazonaws.com/home.html

System information
10.0.60.246ec2-54-80-124-186.compute-1.amazonaws.com

babu@meghmalhar:~/meghmalhar/gitroot/terraform/aws/modules\> curl -sL -w "%{http_code}\n" lbr-1802745961.us-east-1.elb.amazonaws.com/index.html -o /dev/null

200

```



