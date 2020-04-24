output "out_vpc_arn" {
  value       = aws_vpc.dataplane_network.arn
  description = "ARN of the VPC"
}