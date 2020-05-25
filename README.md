# terraform-cloud


![Building simple cloud projects using terraform](https://github.com/baburajk/terraform/blob/develop/diagrams/terraform_aws.png)

##Goal 
Create 3 VPC's to test out VPC Peering, Network ACL's, Security Groups , EC2 , Load Balancers, Route Tables, Subnets etc. using Terraform (IaaS as a code)

###Releases

1. release-2.0 ( Standup stage environment with LBR, EC2 and other resources without VPC Peering - Only dataplane )

git clone -b '1.0' --single-branch git@github.com:baburajk/terraform.git
terraform plan
terraform apply


###Validations

```
babu@meghmalhar:~/> curl -s lbr-1802745961.us-east-1.elb.amazonaws.com/home.html

System information
10.0.60.246ec2-54-80-124-186.compute-1.amazonaws.com

babu@meghmalhar:~/\> curl -sL -w "%{http_code}\n" lbr-1802745961.us-east-1.elb.amazonaws.com/index.html -o /dev/null

200

```



