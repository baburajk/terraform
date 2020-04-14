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

variable "network_prefix" {
  description = "The network prefix/name to use for all the resources"
  type        = string
}
