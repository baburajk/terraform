variable "server_port" {
	description = "The port used by server for HTTP requests"
	type        = number
	default     = 8080
}

variable "lb_port" {
	description = "The port LB will use for HTTP requests"
	type        = number
	default     = 80
}

variable "managed_by" {
	description = "Tag variable: Managed By Terraform"
	type = string
}

variable "env_prefix" {
	description = "Tag variable : Environment Prefix"
	type = string
}


