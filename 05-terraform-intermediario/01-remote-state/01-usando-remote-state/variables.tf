variable "aws_region" {
  type        = string
  description = ""
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = ""
  default     = "tf"
}

variable "ami" {
  type        = string
  description = ""
  default     = "ami-0022f774911c1d690"
}

variable "instance_type" {
  type        = string
  description = ""
  default     = "t2.micro"
}
