variable "aws_region" {
  type        = string
  description = "AWS Region"
  default     = "us-east-1"
}

variable "aws_profile" {
  type        = string
  description = "AWS Profile"
  default     = "tf"
}

variable "domain" {
  type        = string
  description = ""
  default     = ""
}
