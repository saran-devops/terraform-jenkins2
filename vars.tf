variable "AWS_REGION" {
  type    = string
  default = "us-east-1"
}

variable "ingressrules" {
  type    = list(number)
  default = [80, 443, 22]
}

variable "AMIS" {
  type = map(string)
  default = {
    us-east-1 = "ami-0279c3b3186e54acd"
    us-west-1 = "ami-0d5075a2643fdf738"
    eu-west-1 = "ami-09ce2fc392a4c0fbc"
  }
}

variable "instance_tags" {
  type    = list(any)
  default = ["Terraform-1", "Terraform-2"]
}

variable "instance_count" {
  default = "2"
}

variable "key_name" {
  description = " SSH keys to connect to ec2 instance"
  default     = "ubuntu-tf"
}
