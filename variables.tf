
variable "it" {
  description = "This is a variable for instance_type"
  type        = string
  default     = "t2.micro"
}

#variable "tag" {
#  description = "Tag the aws instance"
#  type = map(any)
#  default = {
#    "Name" = "MYEC2"
#    "Owner" = "showmik"
#    "Instance Number" = 1
#  }
#}

variable "flinstones_cidr"{
  type = list(string)
  default = ["10.0.1.0/24","10.0.2.0/24","10.0.3.0/24"]
}

variable "ingress_ports" {
  type = list(number)
  default = [443, 8080, 3306, 22, 80]
}

variable "environ" {
  type    = string
  default = "prod"
}