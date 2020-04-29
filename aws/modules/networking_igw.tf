resource "aws_internet_gateway" "igw" {
vpc_id 		= aws_vpc.dataplane_network.id
	tags = {
		Name		= "igw",
                environment     = var.environment,
                managed_by      = var.managed_by
        }
}

