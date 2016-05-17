variable "access_key" { 
  description = "AWS access key"
}

variable "secret_key" { 
  description = "AWS secret access key"
}

variable "region"     				{ default = "us-west-2" }
variable "zone" 					{ default = "us-west-2a"}
variable "vpc_id"       			{ default = "vpc-e2f74186" }
variable "subnet_id"    			{ default = "subnet-2fdf0e59" }
variable "vpc_security_group_id"    { default = "sg-69edf50e" }

variable "amis-angoss" {
  description = "Base Custom Angoss AMI v2 to launch the instances with"
  default = {
    us-west-2 = "ami-71bf4011" 
  }
}

